use practice2_db;
show tables;

select * from products;
select * from employees;

--- answers of aggregate functions

--- Easy level questions solved

SELECT COUNT(*) AS total_employees FROM employees;
SELECT COUNT(*) AS total_products FROM products;
select max(salary) as max_salary from employees;
select min(salary) as max_salary from employees;
select max(price) as max_price from products;
select min(price) as min_price from products;
select count(stock) as total_stock from products;
select city,count(*) as pune_employees from employees where city='pune'; 
select avg(salary) as avg_salary from employees;
select avg(price) as avg_price from products;

--- Medium level questions solved

select department,count(*) as total_emp from employees where department='IT';
SELECT sum(salary) AS total_sal FROM employees;
select city,avg(salary) as avg_sal from employees where city='Mumbai';
select category,max(price) as max_price from products where category='Furniture';
select category,min(stock) as min_stock from products where category='electronics';
select count(*) as total_products from products where price>5000;
select category,count(stock) as total_stock from products where category='furniture';
select department,avg(salary) as avg_salary from employees where department='HR';
select city,max(salary) as max_sal from employees where city='pune';
select category,min(price) as min_price from products where category='electronics';

--- Hard level questions solved

select sum(salary) as total_high_salary from employees where salary>50000;
select count(*) as total_emp from employees where not city='pune';
select avg(price) as avg_price from products where stock>10;
select max(salary) as max_salary from employees where department IN('hr','it');
SELECT SUM(stock) AS total_stock FROM products WHERE price BETWEEN 1000 AND 10000;
select min(salary) as min_salary from employees where name like 'A%';
select avg(salary) as avg_salary from employees where not department='sales';
select sum(price) as total_price from products where category='Furniture';
select max(stock) as max_stock from products where not category='furniture';
select count(*) as total_products from products where stock>20;






