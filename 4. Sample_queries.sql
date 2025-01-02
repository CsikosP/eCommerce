-- Sample Query 1
-- Using a customer's email address, can you provide the IDs of products that this customer has purchased and paid for, but have not been shipped yet? 
SELECT Product_id
FROM OrderItem
JOIN `Order` ON OrderItem.Order_id = `Order`.id
JOIN Invoice ON `Order`.Invoice_number = Invoice.number
WHERE `Order`.User_id = (SELECT id FROM User WHERE email = 'sangho@unist.ac.kr')
  AND Invoice.status = 'paid'
  AND OrderItem.status = 'ready_to_ship';

-- Sample Query 2
-- Pinpoint the three product type IDs that have the highest sales quantities.
-- Only consider products that have been ordered and paid for, disregarding their shipment status. 
SELECT Product_type_id, SUM(quantity) AS total_sales
FROM ((OrderItem
	JOIN `Order` ON OrderItem.Order_id = `Order`.id)
	JOIN Invoice ON `Order`.Invoice_number = Invoice.number)
    JOIN Product ON OrderItem.Product_id = Product.id
WHERE `Order`.status = 'completed' AND Invoice.status = 'paid'
GROUP BY Product_type_id
ORDER BY total_sales DESC
LIMIT 3;

-- Sample Query 3
-- List the descriptions of product types that are categorised at the second tier.
-- Note: Product types without a parent are deemed first-tier, and their immediate offspring types are considered the second tier. 
SELECT description
FROM Product_Type
WHERE Product_Type.parent_id IS NOT NULL AND Product_Type.parent_id IN (
  SELECT id FROM Product_Type WHERE parent_id IS NULL
);
  
-- Sample Query 4
-- Find the pair of product IDs that are are most frequently ordered together.
SELECT oi1.Product_id AS product_id_1, oi2.Product_id AS product_id_2, COUNT(*) AS order_count
FROM OrderItem oi1 JOIN OrderItem oi2 ON oi1.Order_id = oi2.Order_id
WHERE oi1.Product_id < oi2.Product_id
GROUP BY product_id_1, product_id_2
ORDER BY order_count DESC
LIMIT 1;

-- Sample Query 5
-- Randomly pick three customers and share their email addresses.
SELECT email
FROM User
ORDER BY RAND()
LIMIT 3;
