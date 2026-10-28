-- Day_20.sql
-- SQL DDL Commands Practice Answers
-- Concepts: CREATE, ALTER, DROP
-- Syntax is written for MySQL.
--
-- IMPORTANT:
-- Run statements selectively when practicing. DROP TABLE and DROP COLUMN
-- permanently remove database objects/data. Some later questions depend on
-- tables/columns created or modified by earlier questions.
--
-- Assumptions:
-- 1. For question 14, rename students.name to students.student_name.
-- 2. For question 20 and 28, use customers.customer_name.
-- 3. For question 23, employees.email is assumed to exist; add it if needed.
-- 4. For question 27, employees has a primary key on id and no foreign key
--    depends on it.
-- 5. Question 16 duplicates the stock column created in question 4. If you
--    run Q16 after Q4, MySQL will report that the column already exists.
-- 6. Question 25 removes that same stock column.

-- =========================================================
-- EASY LEVEL - CREATE
-- =========================================================

-- 1. Create students table
CREATE TABLE students (
    id INT,
    name VARCHAR(100),
    age INT,
    city VARCHAR(100)
);

-- 2. Create courses table
CREATE TABLE courses (
    course_id INT,
    course_name VARCHAR(100),
    duration VARCHAR(50)
);

-- 3. Create employees table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(12, 2)
);

-- 4. Create products table
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    stock INT
);

-- 5. Create orders table
CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(100),
    amount DECIMAL(10, 2)
);

-- 6. Create books table
CREATE TABLE books (
    book_id INT,
    title VARCHAR(200),
    author VARCHAR(100),
    price DECIMAL(10, 2)
);

-- 7. Create customers table
CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(100)
);

-- 8. Create movies table
CREATE TABLE movies (
    movie_id INT,
    movie_name VARCHAR(150),
    rating DECIMAL(3, 1)
);

-- 9. Create teachers table
CREATE TABLE teachers (
    teacher_id INT,
    teacher_name VARCHAR(100),
    subject VARCHAR(100)
);

-- 10. Create payments table
CREATE TABLE payments (
    payment_id INT,
    amount DECIMAL(10, 2),
    payment_method VARCHAR(50)
);

-- =========================================================
-- MEDIUM LEVEL - ALTER
-- =========================================================

-- 11. Add email column to students
ALTER TABLE students
ADD COLUMN email VARCHAR(150);

-- 12. Add phone_number column to customers
ALTER TABLE customers
ADD COLUMN phone_number VARCHAR(20);

-- 13. Modify employees.salary datatype to BIGINT
ALTER TABLE employees
MODIFY COLUMN salary BIGINT;

-- 14. Rename students.name to student_name
ALTER TABLE students
RENAME COLUMN name TO student_name;

-- 15. Drop rating column from movies
ALTER TABLE movies
DROP COLUMN rating;

-- 16. Add stock column to products
-- Note: Q4 already creates this column. Run this only if stock does not exist.
-- ALTER TABLE products ADD COLUMN stock INT;

-- 17. Rename teachers table to faculty
RENAME TABLE teachers TO faculty;

-- 18. Change payments.amount datatype to DECIMAL
-- Specify precision and scale for a practical DECIMAL definition.
ALTER TABLE payments
MODIFY COLUMN amount DECIMAL(12, 2);

-- 19. Add PRIMARY KEY to courses.course_id
ALTER TABLE courses
ADD PRIMARY KEY (course_id);

-- 20. Add NOT NULL constraint to customers.customer_name
-- Existing NULL values must be updated before running this statement.
ALTER TABLE customers
MODIFY COLUMN customer_name VARCHAR(100) NOT NULL;

-- =========================================================
-- HARD LEVEL - DROP
-- =========================================================

-- 21. Drop students table
-- Run this after finishing questions 11-14 if you want to practice in order.
DROP TABLE students;

-- 22. Drop customers table
-- Run this after finishing questions 12 and 20.
DROP TABLE customers;

-- 23. Drop email column from employees
-- Q3 does not create email, so add it first if it does not exist:
-- ALTER TABLE employees ADD COLUMN email VARCHAR(150);
ALTER TABLE employees
DROP COLUMN email;

-- 24. Drop payments table
DROP TABLE payments;

-- 25. Remove stock column from products
ALTER TABLE products
DROP COLUMN stock;

-- 26. Drop orders table
DROP TABLE orders;

-- 27. Drop PRIMARY KEY from employees
ALTER TABLE employees
DROP PRIMARY KEY;

-- 28. Drop NOT NULL constraint from customers.customer_name
-- Q22 drops customers, so run this before Q22 (or recreate customers first).
-- ALTER TABLE customers ADD COLUMN customer_name VARCHAR(100);
ALTER TABLE customers
MODIFY COLUMN customer_name VARCHAR(100) NULL;

-- 29. Drop faculty table
DROP TABLE faculty;

-- 30. Drop complete structure of books table
DROP TABLE books;
