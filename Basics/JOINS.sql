-- NO JOIN
SELECT *
FROM customers;
SELECT *
FROM orders;

-- INNER JOIN 
-- SET THEORY : A INTERSECT B
SELECT *
FROM customers c
INNER JOIN orders o
ON c.id = o.customer_id

-- LEFT JOIN - Everything from the Left table
-- and only the matching table from the right table
-- SET THEORY : U INTERSECT A
SELECT *
FROM customers c -- Left Table
LEFT JOIN orders o -- Right Table
ON c.id = o.customer_id

-- RIGHT JOIN - Everything from the right table
-- and only the matching table from the Left table
-- SET THEORY: U INTERSECT B
SELECT *
FROM customers c -- Left Table
RIGHT JOIN orders o -- Right Table
ON c.id = o.customer_id

-- FULL JOIN 
-- SET THEORY : A UNION B
SELECT *
FROM customers c -- Left Table
FULL JOIN orders o -- Right Table
ON c.id = o.customer_id


-- LEFT ANTI JOIN - Rows from the left table
-- which has no match in the right table
-- SET THEORY: A - B
SELECT *
FROM customers c -- Left Table
LEFT JOIN orders o -- Right Table
ON c.id = o.customer_id
WHERE o.customer_id IS NULL


-- RIGHT ANTI JOIN - Rows from the righy table
-- which has no match in the left table
-- SET THEORY: B - A
SELECT *
FROM customers c -- Left Table
RIGHT JOIN orders o -- Right Table
ON c.id = o.customer_id
WHERE c.id IS NULL

-- FULL ANTI JOIN - Rows which don't match in either tables
-- SET THEORY: A UNION B - A INTERSECT B
SELECT *
FROM customers c -- Left Table
FULL JOIN orders o -- Right Table
ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL

-- CROSS JOIN
-- That's literally A x B in Maths
SELECT *
FROM customers c
CROSS JOIN orders o
WHERE o.customer_id IS NOT NULL