how to identify which subquery to use, memorize these patterns rather than memorizing all 30 queries.

Question wording	            Usually use

more than average	            > (SELECT AVG(...))
less than average	            < (SELECT AVG(...))
maximum	                        = (SELECT MAX(...))
minimum	                        = (SELECT MIN(...))
same as Ravi	                = (SELECT ... WHERE name='Ravi')
same category as Laptop	        = (SELECT category...)
one of several values	        IN (SELECT ...)
second highest	                nested MAX()
second lowest	                nested MIN()
own department/category	        Correlated subquery
highest in each department	    correlated MAX()
lowest in each category	        correlated MIN()
every/all	                    often NOT EXISTS                #NOT EXISTS is a very useful pattern for "all" conditions.



The biggest clue for correlated subqueries


If the question says:
"their own department"

or
"its own category"

think:
WHERE department = e.department

or:
WHERE category = p.category

For example:
SELECT *
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);

The e.department connects the outer query to the inner query, which is exactly why it's called a correlated subquery.