-- Custom Query 1
-- Find the three product types that have the highest sales among the premium users.
-- Only consider products that have been ordered and paid for, disregarding their shipment status. 
SELECT Product_type.id, Product_type.description, SUM(quantity) AS total_sales
FROM  ((((Product_type
	JOIN Product ON Product_type.id = Product.Product_type_id)
    JOIN OrderItem ON Product.id = OrderItem.Product_id)
    JOIN `Order` ON OrderItem.Order_id = `Order`.id)
    JOIN Invoice ON `Order`.Invoice_number = Invoice.number)
    JOIN User ON `Order`.User_id = User.id
WHERE (`Order`.status = 'completed' AND Invoice.status = 'paid') AND User.category = 'premium'
GROUP BY Product_type.id
ORDER BY total_sales DESC
LIMIT 3;

-- Custom Query 2
-- Given a product type, find shops that sells that product type or its children product type,
-- and order the list of the shops by total sales(quantity * unit_price).
-- Only consider products that have been ordered and paid for, disregarding their shipment status.
SET @target_product_type = 5;
SELECT SUM(OrderItem.quantity * OrderItem.unit_price) AS sales_volume, Shop.name
FROM  ((((Shop
	JOIN Product ON Shop.id = Product.Shop_id)
    JOIN OrderItem ON Product.id = OrderItem.Product_id)
    JOIN `Order` ON OrderItem.Order_id = `Order`.id)
    JOIN Invoice ON `Order`.Invoice_number = Invoice.number)
    JOIN Product_type ON Product.Product_type_id = Product_type.id
WHERE (`Order`.status = 'completed' AND Invoice.status = 'paid') AND (Product_type.id = @target_product_type OR Product_type.parent_id = @target_product_type) 
GROUP BY Shop.id
ORDER BY sales_volume DESC
LIMIT 5;

-- Custom Query 3
-- Find a user whose total ordered item quantity is the highest, and find the three most ordered product type among the products the user ordered.
-- Only consider products that have been ordered and paid for, disregarding their shipment status.
SELECT Product_type.id, Product_type.description, SUM(OrderItem.quantity) AS product_sales
FROM (((((Product_type
	JOIN Product ON Product_type.id = Product.Product_type_id)
    JOIN OrderItem ON Product.id = OrderItem.Product_id)
    JOIN `Order` ON OrderItem.Order_id = `Order`.id)
    JOIN Invoice ON `Order`.Invoice_number = Invoice.number)
    JOIN User ON `Order`.User_id = User.id)
	JOIN (
	SELECT User.id, SUM(OrderItem.quantity) AS total_sales
	FROM  ((( User
		JOIN `Order` ON User.id = `Order`.user_id)
		JOIN OrderItem ON `Order`.id = OrderItem.Order_id)
		JOIN Invoice ON `Order`.Invoice_number = Invoice.number)
	WHERE (`Order`.status = 'completed' AND Invoice.status = 'paid')
	GROUP BY User.id
	ORDER BY total_sales DESC
	LIMIT 1 
) AS top_user ON User.id = top_user.id
GROUP BY Product_type.id
ORDER BY product_sales DESC
LIMIT 3;

-- Query to find the user whose total ordered item quantity is the highest.
-- This subquery is nested inside the query above.
SELECT User.id, SUM(OrderItem.quantity) AS total_sales
FROM  ((( User
	JOIN `Order` ON User.id = `Order`.user_id)
	JOIN OrderItem ON `Order`.id = OrderItem.Order_id)
	JOIN Invoice ON `Order`.Invoice_number = Invoice.number)
WHERE (`Order`.status = 'completed' AND Invoice.status = 'paid')
GROUP BY User.id
ORDER BY total_sales DESC
LIMIT 1 ;
