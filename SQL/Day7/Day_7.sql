use practice2_db;
show tables;
select * from products;
--- Easy level

select * from employees;
select name,city from employees;
select distinct department from employees;
select * from products limit 3;
select * from employees where city='pune';
select * from products where price>5000;
select * from employees order by salary;
select name as Employee_Name from employees;
select * from products where category='Electronics';
select * from employees where salary>50000;

--- Medium level

select * from employees where city='pune' or city='Mumbai';
select * from employees where department='IT' AND salary>60000;
select * from products where stock between 5 and 30;
select * from employees where name like 'A%';
select * from products where not category='Furniture';
select distinct city from employees;
select product_name as Items from products order by Items;
select * from employees order by salary desc limit 2;
select * from employees where city IN ('Pune', 'Delhi');
select * from products order by price desc;


--- Intermediate level questions solved
select name as emp_name,salary as annual_sal from employees;
select * from employees where salary BETWEEN 45000 AND 70000;
select * from products where product_name like '%o%';
select * from employees where NOT department='HR';
select * from employees  order by department, order by salary desc ;
select * from products where category='Electronics' and price>1000;
select * from employees where name like '%a';
select * from products order by price desc limit 3;
select * from employees where city='Mumbai' order by salary desc;
select price as cost from products;

--- Advanced Level Questions

select * from employees where city='pune' AND salary>45000 order by salary desc;
select distinct department from employees where salary>50000;
select name as Staff_Name , salary as Annual_Income from employees;
select * from employees where name like '%h%' AND city='Pune';
select * from products where price BETWEEN 1000 AND 10000 AND stock > 10;
select * from employees where not city='Pune' AND NOT city='Mumbai';
select name,department,salary from employees order by department,salary desc;
select * from products where category like 'E%';
select * from products where category='Furniture' order by price desc;
select * from products where category='Electronics' order by price desc limit 2;


