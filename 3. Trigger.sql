-- Trigger before CreditCard's insertion
DELIMITER $$
CREATE TRIGGER before_insert_creditcard
BEFORE INSERT ON CreditCard
FOR EACH ROW
BEGIN
    -- Check if ExpireDate is not past the current date
    IF NEW.ExpireDate < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ExpireDate cannot be past the current date',
        MYSQL_ERRNO = 4001;
    END IF;
END;
$$
DELIMITER ;

-- Trigger before Payment's insertion
DELIMITER $$
CREATE TRIGGER before_insert_payment
BEFORE INSERT ON Payment
FOR EACH ROW
BEGIN
    DECLARE invoice_status VARCHAR(50);
    DECLARE credit_card_exists INT;

    -- Check if Invoice's status is 'issued'
    SELECT status INTO invoice_status FROM Invoice WHERE number = NEW.Invoice_number;
    IF invoice_status != 'issued' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invoice''s status is not ''issued'', or it doesn''t exist',
        MYSQL_ERRNO = 4002;
    END IF;

    -- If the method is 'credit_card', check if CreditCard_Number exists in CreditCard and its ExpireDate is not past the date
    IF NEW.method = 'credit_card' THEN
        SELECT COUNT(*) INTO credit_card_exists FROM CreditCard WHERE Number = NEW.CreditCard_Number AND ExpireDate >= NEW.date;
        IF credit_card_exists = 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'CreditCard_Number does not exist or its ExpireDate is past the current date',
            MYSQL_ERRNO = 4003;
        END IF;
    END IF;
END;
$$
DELIMITER ;

-- Trigger after Payment's insertion, set the invoice's status to 'paid'.
CREATE TRIGGER after_insert_payment
AFTER INSERT ON Payment
FOR EACH ROW
	UPDATE Invoice SET status = 'paid' WHERE number = NEW.Invoice_number;

-- Trigger before Payment's deletion
-- Payment is not a FK of any table, so we added this trigger to restrict deletion.
DELIMITER $$
CREATE TRIGGER before_delete_payment
BEFORE DELETE ON Payment
FOR EACH ROW
BEGIN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Deletion not allowed on Payment table',
    MYSQL_ERRNO = 4004;
END;
$$
DELIMITER ;

-- Trigger after Invoice's update (status becomes 'paid')
DELIMITER $$
CREATE TRIGGER after_update_invoice_paid
AFTER UPDATE ON Invoice
FOR EACH ROW
BEGIN
    -- Find all OrderItem with Order_id and change their OrderItem.status to 'ready_to_ship'
    IF NEW.status = 'paid' THEN
        UPDATE OrderItem SET status = 'ready_to_ship' WHERE Order_id = NEW.Order_id;
    END IF;
END;
$$
DELIMITER ;

-- Trigger before Order's update (status becomes 'cancelled')
DELIMITER $$
CREATE TRIGGER before_update_order_cancelled
BEFORE UPDATE ON `Order`
FOR EACH ROW
BEGIN
	DECLARE invoice_status VARCHAR(50);

    -- If the previous status was 'complete', then it can't be 'cancelled'
    IF NEW.status = 'cancelled' AND OLD.status = 'completed' THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Previous status was ''complete''',
		MYSQL_ERRNO = 4007;
    END IF;
END;
$$
DELIMITER ;

-- Trigger after Order's update (status becomes 'cancelled')
DELIMITER $$
CREATE TRIGGER after_update_order_cancelled
AFTER UPDATE ON `Order`
FOR EACH ROW
BEGIN
    -- Delete all OrderItem which have this id
    IF NEW.status = 'cancelled' THEN
        DELETE FROM OrderItem WHERE Order_id = NEW.id;
    END IF;
END;
$$
DELIMITER ;

-- Trigger before Order's update (status becomes 'completed')
DELIMITER $$
CREATE TRIGGER before_update_order_completed
BEFORE UPDATE ON `Order`
FOR EACH ROW
BEGIN
	DECLARE invoice_exists INT;
    DECLARE order_item_exists INT;
    DECLARE out_of_stock_exists INT;
    
    -- Check if the previous status is 'processing'
    IF NEW.status = 'completed' AND OLD.status != 'processing' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The previous status is not ''processing''',
        MYSQL_ERRNO = 4008;
    END IF;

    -- Check if Invoice.number DOES NOT already exist in Invoice
    IF NEW.status = 'completed' THEN
        
        SELECT COUNT(*) INTO invoice_exists FROM Invoice WHERE number = NEW.Invoice_number;
        IF invoice_exists > 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invoice number already exists',
            MYSQL_ERRNO = 4009;
        END IF;
    END IF;

    -- Check if there exists at least one OrderItem that has this order's id
    -- Check if none of those OrderItems are 'out_of_stock'
    IF NEW.status = 'completed' THEN

        SELECT COUNT(*) INTO order_item_exists FROM OrderItem WHERE Order_id = NEW.id;
        IF order_item_exists = 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No OrderItem found for this order',
            MYSQL_ERRNO = 4010;
        END IF;
        
        SELECT COUNT(*) INTO out_of_stock_exists FROM OrderItem WHERE Order_id = NEW.id AND status = 'out_of_stock';
        IF out_of_stock_exists > 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'There are out_of_stock items in this order',
            MYSQL_ERRNO = 4011;
        END IF;
    END IF;
END;
$$
DELIMITER ;

-- Trigger after Order's update (status becomes 'completed')
DELIMITER $$
CREATE TRIGGER after_update_order_completed
AFTER UPDATE ON `Order`
FOR EACH ROW
BEGIN
    -- Insert a row to Invoice table (Invoice.number, status = 'issued', date = curdate, `Order`.id = id)
    IF NEW.status = 'completed' THEN
        INSERT INTO Invoice (number, status, date, Order_id) VALUES (CONCAT('INV', LPAD(NEW.id, 3, '0')), 'issued', CURDATE(), NEW.id);
    END IF;
END;
$$
DELIMITER ;

-- Trigger before OrderItem's insertion
DELIMITER $$
CREATE TRIGGER before_insert_orderitem
BEFORE INSERT ON OrderItem
FOR EACH ROW
BEGIN
    DECLARE max_seq_id INT;

    -- Check if Shipment_id is NULL
    IF NEW.Shipment_id IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Shipment_id must be NULL for new OrderItem',
        MYSQL_ERRNO = 4012;
    END IF;

    -- Find the maximum seq_id of existing OrderItems that share the same Order_id
    SELECT MAX(Seq_id) INTO max_seq_id FROM OLD.OrderItem WHERE Order_id = NEW.Order_id;
    SET NEW.Seq_id = IFNULL(max_seq_id, 0) + 1;
END;
$$
DELIMITER ;

-- Trigger before OrderItem's deletion
DELIMITER $$
CREATE TRIGGER before_delete_orderitem
BEFORE DELETE ON OrderItem
FOR EACH ROW
BEGIN
    -- The previous status should be either 'processing' or 'out_of_stock'
    IF OLD.status != 'processing' AND OLD.status != 'out_of_stock' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid deletion of OrderItem, previous status should be either ''processing'' or ''out_of_stock''',
        MYSQL_ERRNO = 4013;
    END IF;
END;
$$
DELIMITER ;

-- Trigger before OrderItem's update (status becomes 'ready_to_ship')
DELIMITER $$
CREATE TRIGGER before_update_orderitem_ready_to_ship
BEFORE UPDATE ON OrderItem
FOR EACH ROW
BEGIN
	DECLARE invoice_status VARCHAR(50);
    -- Check if the current status is 'processing'
    IF NEW.status = 'ready_to_ship' AND OLD.status != 'processing' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid status change to ready_to_ship',
        MYSQL_ERRNO = 4014;
    END IF;

    -- Check if Invoice with Order_id has status 'paid'
    IF NEW.status = 'ready_to_ship' THEN
        
        SELECT status INTO invoice_status FROM Invoice WHERE Order_id = NEW.Order_id;
        IF invoice_status != 'paid' THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cannot set OrderItem status to ready_to_ship without paid Invoice',
            MYSQL_ERRNO = 4015;
        END IF;
    END IF;
END;
$$
DELIMITER ;

-- Trigger before OrderItem's update (status becomes 'shipped')
DELIMITER $$
CREATE TRIGGER before_update_orderitem_shipped
BEFORE UPDATE ON OrderItem
FOR EACH ROW
BEGIN
    -- Check if the current status is 'ready_to_ship'
    IF NEW.status = 'shipped' AND OLD.status != 'ready_to_ship' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid status change to shipped',
        MYSQL_ERRNO = 4016;
    END IF;

    -- Check if Shipment_id is in Shipment. (Shipment is not FK, so manual restriction is needed)
    IF NEW.status = 'shipped' AND NEW.Shipment_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Shipment_id cannot be NULL for status change to shipped',
        MYSQL_ERRNO = 4017;
    END IF;
END;
$$
DELIMITER ;

-- Trigger before OrderItem's update (status becomes 'out_of_stock')
DELIMITER $$
CREATE TRIGGER before_update_orderitem_out_of_stock
BEFORE UPDATE ON OrderItem
FOR EACH ROW
BEGIN
    -- The previous status should be 'processing'
    IF NEW.status = 'out_of_stock' AND OLD.status != 'processing' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid status change to out_of_stock',
        MYSQL_ERRNO = 4018;
    END IF;
END;
$$
DELIMITER ;

-- Trigger before OrderItem's update (status becomes 'processing')
DELIMITER $$
CREATE TRIGGER before_update_orderitem_processing
BEFORE UPDATE ON OrderItem
FOR EACH ROW
BEGIN
    -- The previous status should be 'out_of_stock'
    IF NEW.status = 'processing' AND OLD.status != 'out_of_stock' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid status change to processing',
        MYSQL_ERRNO = 4019;
    END IF;
END;
$$
DELIMITER ;

-- Trigger before OrderItem's update (status becomes 'shipped')
DELIMITER $$
CREATE TRIGGER before_update_orderitem_shipment_id
BEFORE UPDATE ON OrderItem
FOR EACH ROW
BEGIN
	IF NEW.status = 'shipped' THEN
		-- The previous Shipment_id should be NULL
		IF NEW.Shipment_id IS NULL OR OLD.status != 'ready_to_ship' THEN
			SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Invalid update of Shipment_id. the previous status was not ''ready_to_ship'' or new shipment_id is NULL',
			MYSQL_ERRNO = 4020;
		END IF;
    END IF;
END;
$$
DELIMITER ;

-- Trigger before Shipment's insertion
DELIMITER $$
CREATE TRIGGER before_insert_shipment
BEFORE INSERT ON Shipment
FOR EACH ROW
BEGIN
    DECLARE ready_to_ship_exists INT;

    -- Check if there exists at least one OrderItem whose status is 'ready_to_ship'
    SELECT COUNT(*) INTO ready_to_ship_exists FROM OrderItem WHERE Shipment_id IS NULL AND status = 'ready_to_ship';
    IF ready_to_ship_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No OrderItem with status ready_to_ship found for shipment',
        MYSQL_ERRNO = 4021;
    END IF;
END;
$$
DELIMITER ;