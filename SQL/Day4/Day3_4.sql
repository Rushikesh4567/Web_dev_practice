CREATE DATABASE Practice2_db;
use Practice2_db;


CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employees (id, name, department, salary, city) VALUES
(1, 'Asha', 'HR', 45000, 'Pune'),
(2, 'Ravi', 'IT', 70000, 'Mumbai'),
(3, 'Neha', 'IT', 65000, 'Pune'),
(4, 'Karan', 'Sales', 50000, 'Delhi'),
(5, 'Amit', 'HR', 50000, 'Mumbai'),
(6, 'Sneha', 'Sales', 48000, 'Pune');
-- Create products table
CREATE TABLE products (
    id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT,
    stock INT
);

-- Insert data into products
INSERT INTO products (id, product_name, category, price, stock) VALUES
(1, 'Laptop', 'Electronics', 55000, 10),
(2, 'Mouse', 'Electronics', 700, 50),
(3, 'Chair', 'Furniture', 3000, 20),
(4, 'Desk', 'Furniture', 7000, 5),
(5, 'Keyboard', 'Electronics', 1500, 30)
(6, 'Sofa', 'Furniture', 25000, 2);

--- select practice questions answers

select * from employees;
select name from employees;
select product_name,price from products;
select name, department from employees;
select product_name,stock from products;

--- from practice questions answers

select * from employees;
select * from products;
select category,price from products;

--- where practice questions answers

select * from employees where department='IT';
select * from products where price >5000;
select * from employees where salary<60000;
select * from products where stock <15;
select * from employees where city='pune';
select * from products where category='Electronics';
select * from employees where salary>65000;
select * from products where price BETWEEN 1000 AND 10000;
select * from employees where department<>'HR';

--- DISTINCT PRACTICE QUESTION ANSWERS

SELECT DISTINCT department from employees;
select distinct city from employees;
select distinct category from products;
select distinct salary from employees;

--- LIMIT PRACTICE QUESTION ANSWERS

select * from employees limit 1;
select * from employees limit 2;
select * from products limit 3;
select * from products where price>1000 limit 2;

--- Mixed practice qustions solved

select distinct departments from employees where city='pune';
select * from employees limit 2;
select distinct category from products where price>1000;
select *from employees where salary>50000;
select * from employees where city!='Mumbai' limit 3;
select distinct city from employees where salary>45000;
select product_name from products where stock>10;
select * from products where category='Furniture' limit 2;
select distinct department from employees where salary>50000;
select * from products where category!='Electronics';


-- Challenging questions

select * from products order by price limit 3;
select distinct city from employees where department='IT';
select name from employees where salary>5000 AND city='pune';
select * from products where price<5000 limit 2;
select distinct department from employees where department<>'Sales';

