use practice2_db;

show tables;

--- Easy Level - GROUP BY

select department,count(*) as total_employee from employees group by department;
select city,count(*) as total_employee from employees group by city;
select department,avg(salary) as avg_sal from employees group by department;
select department,max(salary) as max_sal from employees group by department;
select department,min(salary) as min_sal from employees group by department;
select category,count(*) as total_product from products group by category;
select category,count(stock) as total_stock from products group by category;
select category,avg(price) as avg_price from products group by category;
select category,max(price) as avg_price from products group by category;
select category,min(price) as min_price from products group by category;

--- Medium Level - GROUP BY + HAVING

select department,count(*) as total_emp from employees group by department having count(*)>1;
select city,count(*) as atleast1_emp_city from employees group by city having count(*)>1;
select department,avg(salary) as avg_sal from employees group by department having avg(salary)>1;
select category,count(*) as total_product from products group by category having count(*)>2;
select category,count(stock) as total_stock from products group by category having count(stock)>40;
select category,avg(price) as avg_price from products group by category having avg(price)>10000;
select category,min(price) as min_price from products group by category having min(price)<1000;
select department,max(salary) as max_salary from employees group by department having max(salary)>90000;
select city,min(salary) as min_salary from employees group by city having min(salary)>45000;
select category ,min(price) as lowest_price from products group by category having min(price)>100000;

--- Hard Level - Advanced Group Filtering

select department,avg(salary) as avg_sal from employees group by department having avg(salary) between 50000 and 70000;
select department,count(*) as total_emp from employees group by department having count(*)=2;
select department,count(*) as total_emp from employees group by department having count(*)<3;
select department,min(salary) as min_salary from employees group by department having min(salary)>45000;
select city,sum(salary) as total_salary from employees group by city having sum(salary)>45000;
select department,sum(salary) as total_salary from employees group by department order by sum(salary) desc;
select category,sum(stock) as total_stock from products group by category having sum(stock) between 20 and 60;
select category,max(price) as max_price from products group by category having max(price)>20000;
select category,avg(stock) as total_stock from products group by category having avg(stock)>15;
select category,sum(price) as total_price from products group by category having sum(price)>20000;



