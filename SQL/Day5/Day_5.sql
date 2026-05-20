use practice2_db;

show tables;

--- AND practice questions solved

select * from employees where department='IT' AND salary>60000;
select * from products where category='Electronics' AND price>1000;
select * from employees where salary<50000 AND city='Pune';
select * from products where category='Furniture' AND stock<10;
select * from employees where department='HR' AND city='Mumbai';

--- OR practice questions solved

select * from employees where city='pune' OR city='mumbai';
select * from products where price<1000 OR stock>25;
select * from employees where department='HR' OR 'SALES';
select * from products where category='Electronics' OR 'Furniture';
select * from employees where salary<50000 OR city='Delhi';

--- NOT Practice questions solved

select * from employees where NOT department='IT';
select * from employees where NOT city='pune';
select * from employees where NOT department='HR';
select * from products where NOT category='Electronics';

select * from employees;

--- IN practice questions solved

select * from employees where city IN('pune','Mumbai');
select * from employees where department IN('HR','IT');
select * from employees where name IN('Ravi','Neha','Amit');
select * from products where category IN('Electronics','Furniture');
select * from products where price IN(700,1500,3000);

--- BETWEEN Practice Questions solved

select * from employees where salary BETWEEN 45000 And 60000;
select * from employees where salary BETWEEN 50000 And 70000;
select * from employees where ID BETWEEN 2 And 5;
select * from products where stock BETWEEN 5 And 30;
select * from products where price BETWEEN 1000 And 10000;

--- LIKE Practice Questions Solved

select * from employees where name like 'A%';
select * from employees where name like '%a';
select * from employees where name like '%u%';
select * from products where product_name like 'E%';
select * from products where category like 'E%';

