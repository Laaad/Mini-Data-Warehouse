-- A + B
SELECT
FirstName,
LastName
FROM Sales.Customers

UNION ALL

SELECT
FirstName,
LastName
FROM Sales.Employees



-- A UNUIN B
SELECT
FirstName,
LastName
FROM Sales.Customers

UNION

SELECT
FirstName,
LastName
FROM Sales.Employees



-- A - B
SELECT
FirstName,
LastName
FROM Sales.Customers

EXCEPT

SELECT
FirstName,
LastName
FROM Sales.Employees

-- A INTERSECT B
SELECT
FirstName,
LastName
FROM Sales.Customers

INTERSECT

SELECT
FirstName,
LastName
FROM Sales.Employees