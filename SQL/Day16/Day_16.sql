use practice2_db;

show tables;
select * from employees;
select * from products;

----  Easy level Questions

select * from employees where salary>(select AVG(salary) from employees);
select * from products where price>(select AVG(price) from products);
select * from employees where salary = (select MAX(salary) from employees);
select * from products where price = (select MIN(price)from products);
select * from employees where salary<(select MAX(salary) from employees);
select * from products where stock>(select MIN(stock) from products);
select * from employees where department=(select department from employees where name="Ravi");
select * from products where category = (select category from products where product_name="laptop");
select * from employees where salary>(select salary from employees where name="Amit");
select * from products where price>(select price from products where product_name="mouse");


---- Medium Level questions

select * from employees where salary>(select AVG(salary) from  employees where department="IT");
select * from products where price>(select AVG(price) from products where category="furniture");
select * from employees e where city IN(select city from employees where e.department="HR");
select * from products where category IN(select price from products where price>=20000);
select * from employees where salary = (select MAX(salary) from employees where salary<(select MAX(salary) from employees));
select * from products where price =(select MIN(price)from products where price>(select MIN(price)from products));

select * from employees where salary>60000;
--OR
select distinct department from employees where salary>60000;
--OR
select distinct department from employees where id IN (select id from employees where salary>60000);

select distinct city from employees where salary>50000;
--OR
select distinct city from employees where id IN(select id from employees where salary>50000);
select * from products where stock>(select AVG(Stock) from products);
select * from employees e where salary<(select AVG(salary) from employees where department=e.department);


--- Hard Level Questions
---- Co-related subqueries

select * from employees e where salary>(select AVG(salary) from employees where department=e.department);
select * from employees e where salary>(select MAX(salary) from employees where department=e.department);
select * from products p where price>(select AVG(price) from products where category=p.category);
select * from employees e where salary>(select MAX(salary) from employees where department=e.department);
select * from employees e where salary<(select MAX(salary) from employees where department=e.department);
select * from products p where stock<(select MIN(stock) from products where category=p.category);
select * from employees e where salary=(select MIN(salary) from employees where department=e.department);
select * from products p where price=(select MIN(price) from products where category=p.category);
select distinct e1.department from employees e1 where NOT EXISTS(select 1 from employees e2 where e2.department=e1.department AND e2.salary<=45000);
select distinct p1.category from products p1 where NOT EXISTS(select 1 from products p2 where p2.category=p1.category AND p2.price<=5);

