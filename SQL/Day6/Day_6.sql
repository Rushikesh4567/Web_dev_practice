use practice2_db;

show tables;

select * from products;
select * from employees;

--- Order By practice questions solved

select * from employees order by salary;
select * from employees order by salary DESC;
select * from employees order by name;
select * from employees order by city;
select * from products order by price;
select * from products order by stock desc;
select * from employees order by salary limit 1;
select * from employees where department='IT' order by salary desc;
select * from products order by price desc limit 3;
select * from products order by category,price;

--- AS practice questions solved

select name as employee_name from employees;
select salary as Monthly_Salary from employees;
select city as Employee_City from employees;
select department as dept from employees;
select name as employee_name,salary*12 as monthly_salary from employees;
select product_name as Product from products;
select category as Product_Category from products;
select stock as Available_Stock from products;
select price as Cost from products;
select product_name as Product,price-500 as discounted_price from products;
