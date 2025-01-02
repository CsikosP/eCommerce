-- 1. Basic insertion and deletion

-- Shouldn't be deleted; FK restraint
DELETE FROM Category
WHERE category = 'premium';
    
-- Should be deleted normally
DELETE FROM User
WHERE id = 1;

-- Should be inserted normally
INSERT INTO User (id, username, email, password, name, address, phone_number, category)
VALUES
    (1, 'Sangho', 'lsh@unist.ac.kr', '486va3r1gg', 'Sangho Lee', '306 Dorm, UNIST', '010-9303-6124', 'premium');
    



-- 2. Trigger tests (Order and Invoice)

-- Error Code: 4002. Invoice's status is not 'issued' or it doesn't exist
INSERT INTO `Order` (id, date, status, User_id, Invoice_number)
VALUES
	(71, '2023-12-13', 'completed', 29, 'INV071');
    
-- Can't be inserted due to FK restraint
INSERT INTO `Order` (id, date, status, User_id, Invoice_number)
VALUES
	(71, '2023-12-13', 'processing', 31, 'INV071');
    
-- Should be inserted normally
INSERT INTO `Order` (id, date, status, User_id, Invoice_number)
VALUES
	(71, '2023-12-13', 'processing', 31, NULL);

-- Should be deleted normally
DELETE FROM `Order`
WHERE id = 71;

-- Shouldn't be deleted due to FK restraint
DELETE FROM `Order`
WHERE id = 1;

-- Should be inserted normally
INSERT INTO OrderItem (Seq_id, Order_id, unit_price, quantity, status, Shipment_id, Product_id)
VALUES
	(115, 17, 1, 1, 'processing', NULL, 7);

-- Should be updated normally (status to 'cancelled')
UPDATE `Order`
SET status = 'cancelled'
WHERE id = 12;

-- Should be updated normally (status to 'cancelled')
UPDATE `Order` 
SET status = 'cancelled'
WHERE id = 13;

-- The corresponding orderitems of the cancelled order should have been deleted
SELECT *
FROM OrderItem
WHERE Order_id = 13;

-- Should be updated normally (status to 'completed')
UPDATE `Order` 
SET status = 'completed'
WHERE id = 17;

-- The corresponding Invoice should have been newly inserted
SELECT *
FROM Invoice
WHERE Order_id = 17;



-- 3. Trigger Checks (Payment and Shipment)

-- Error Code: 4002. Invoice's status is not 'issued' or it doesn't exist
INSERT INTO Payment (id, date, amount, method, Invoice_number, CreditCard_Number)
VALUES
    (34, '2023-12-13', 120000, 'credit_card', 'INV034', '0332-4149-3039-7290');

-- Should be inserted normally (INV017 is inserted from step 2, so it should be valid)
INSERT INTO Payment (id, date, amount, method, Invoice_number, CreditCard_Number)
VALUES
    (34, '2023-12-13', 120000, 'credit_card', 'INV017', '0332-4149-3039-7290');
    
-- The Invoice status should have been changed into 'paid'
SELECT *
FROM Invoice
WHERE number = 'INV017';

-- The OrderItems status should have been changed into 'ready_to_ship'
SELECT *
FROM OrderItem
WHERE Order_id = 17;

-- Should be inserted normally
INSERT INTO Shipment (id, Tracking_Number, date)
VALUES
	(28, '1234234-819363', '2023-12-14');
    
-- To finalize shipment, OrderItem.status and Shipment_id should be changed manually.
UPDATE OrderItem
SET status = 'shipped', Shipment_id = 28
WHERE Order_id = 17;
    
-- The OrderItems status should have been changed into 'shipped', Shipment_id to 28.
SELECT *
FROM OrderItem
WHERE Order_id = 17;

-- Error Code: 4016. Invalid status change to shipped
UPDATE OrderItem
SET status = 'shipped', Shipment_id = 28
WHERE Order_id = 17;


