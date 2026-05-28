use practice2_db;

-- Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

-- Insert data into customers
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Asha', 'Pune'),
(2, 'Ravi', 'Mumbai'),
(3, 'Neha', 'Delhi'),
(4, 'Amit', 'Bangalore');

-- Create orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert data into orders
INSERT INTO orders (order_id, customer_id, product, amount) VALUES
(101, 1, 'Laptop', 55000),
(102, 2, 'Mouse', 700),
(103, 1, 'Keyboard', 1500),
(104, 3, 'Chair', 3000);

-- Create payments table
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(30),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- Insert data into payments
INSERT INTO payments (payment_id, order_id, payment_method) VALUES
(1, 101, 'UPI'),
(2, 102, 'Card'),
(3, 104, 'Cash');


customers
    ↓
orders
    ↓
payments