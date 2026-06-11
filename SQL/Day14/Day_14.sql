use practice2_db;
show tables;

select * from customers;
select * from orders;
select * from payments;

--- Easy level joins questions solved

SELECT c.customer_name, o.product FROM customers c INNER JOIN orders o ON c.customer_id = o.customer_id;
SELECT c.customer_name, o.amount FROM customers c INNER JOIN orders o ON c.customer_id = o.customer_id;
SELECT o.order_id, o.product, c.city FROM customers c INNER JOIN orders o ON c.customer_id = o.customer_id;
SELECT o.order_id, c.customer_name FROM customers c INNER JOIN orders o ON c.customer_id = o.customer_id;
SELECT c.customer_name, o.product FROM customers c INNER JOIN orders o ON c.customer_id = o.customer_id;
SELECT c.customer_name, o.product, o.amount FROM customers c INNER JOIN orders o ON c.customer_id = o.customer_id;
SELECT p.payment_method, o.product FROM orders o INNER JOIN payments p ON o.order_id = p.order_id;
SELECT o.order_id, p.payment_method FROM orders o INNER JOIN payments p ON o.order_id = p.order_id;
SELECT DISTINCT c.customer_name FROM customers c INNER JOIN orders o ON c.customer_id = o.customer_id;
SELECT c.customer_name, p.payment_method FROM customers c 
INNER JOIN orders o ON c.customer_id = o.customer_id 
INNER JOIN payments p
ON o.order_id = p.order_id;

--- Medium level joins questions solved

SELECT c.customer_name, o.order_id, o.product FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id;
SELECT c.customer_name, o.product FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id;
SELECT c.customer_name, o.amount FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id;
SELECT c.customer_name, o.order_id FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id;
SELECT o.order_id, o.product, p.payment_method FROM orders o LEFT JOIN payments p ON o.order_id = p.order_id;
SELECT c.customer_name, o.product FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id;
SELECT c.customer_name, p.payment_method FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id LEFT JOIN payments p ON o.order_id = p.order_id;
SELECT c.customer_name, SUM(o.amount) AS total_amount FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name;
SELECT c.customer_name FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id WHERE o.order_id IS NULL;
SELECT o.order_id, o.product, o.amount
FROM orders o
LEFT JOIN payments p
ON o.order_id = p.order_id
WHERE p.payment_id IS NULL;

--- Hard level joins questions solved

SELECT o.order_id, o.product, c.customer_name FROM customers c RIGHT JOIN orders o ON c.customer_id = o.customer_id;
SELECT p.payment_id, p.payment_method, o.order_id, o.product, o.amount FROM orders o RIGHT JOIN payments p ON o.order_id = p.order_id;
SELECT p.payment_method, o.product FROM orders o RIGHT JOIN payments p ON o.order_id = p.order_id;
SELECT o.order_id, o.product, c.city FROM customers c RIGHT JOIN orders o ON c.customer_id = o.customer_id;
SELECT p.payment_id, p.payment_method, o.order_id, c.customer_name FROM customers c RIGHT JOIN orders o ON c.customer_id = o.customer_id RIGHT JOIN payments p ON o.order_id = p.order_id;
SELECT o.order_id, c.customer_name FROM customers c RIGHT JOIN orders o ON c.customer_id = o.customer_id;
SELECT p.payment_id, p.payment_method, c.customer_name FROM customers c RIGHT JOIN orders o ON c.customer_id = o.customer_id
RIGHT JOIN payments p ON o.order_id = p.order_id;
SELECT o.product, p.payment_method FROM payments p RIGHT JOIN orders o ON p.order_id = o.order_id;
SELECT o.order_id, o.product, o.amount FROM customers c RIGHT JOIN orders o ON c.customer_id = o.customer_id WHERE c.customer_id IS NULL;
SELECT o.order_id, o.product, p.payment_method FROM payments p RIGHT JOIN orders o ON p.order_id = o.order_id;
