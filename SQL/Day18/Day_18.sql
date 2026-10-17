use practice2_db;

show tables;
select * from employees;
select * from products;

---- Easy level

-- first two questions were already inserted or added

INSERT INTO employees VALUES(7,'Om','HR',60000,'Banglore');
INSERT INTO employees VALUES(8,'Haris','HR',60000,'Pune');
INSERT INTO employees VALUES(9,'Raj','IT',72000,'Hyderabad');
INSERT INTO employees VALUES(10,'Mahesh','Marketing',50000,'Pune');
INSERT INTO employees VALUES(11,'Kaushal','IT',65000,'Pune');
INSERT INTO employees VALUES(12,'Shreya','HR',50000,'Pune');
INSERT INTO employees VALUES(13,'Priyanka','HR',50000,'Pune');
INSERT INTO employees VALUES(14,'Shree','IT',50000,'Pune');

--- Medium level questions

UPDATE employees SET salary = 75000 WHERE name = 'Ravi';
UPDATE employees SET city = 'Mumbai' WHERE name = 'Neha';
UPDATE employees SET salary = salary + 5000 WHERE department = 'HR';
UPDATE employees SET department = 'Marketing' WHERE name = 'Karan';
UPDATE employees SET salary = 60000 WHERE city = 'Pune';
UPDATE employees SET salary = salary * 1.10 WHERE department = 'IT';
UPDATE employees SET city = 'Bangalore' WHERE department = 'Sales';
UPDATE employees SET department = 'Finance' WHERE name = 'Amit';
UPDATE employees SET salary = salary - 2000 WHERE salary > 70000;
UPDATE employees SET city = UPPER(city);

--- Hard level questions

DELETE FROM employees WHERE id = 5;
DELETE FROM employees WHERE department = 'HR';
DELETE FROM employees WHERE salary < 50000;
DELETE FROM employees WHERE city = 'Pune';
DELETE FROM employees WHERE name = 'Karan';
DELETE FROM employees WHERE department = 'Marketing';
DELETE FROM employees WHERE salary > 70000;
DELETE FROM employees WHERE city = 'Bangalore';
DELETE FROM employees WHERE name LIKE 'S%';
DELETE FROM employees;

