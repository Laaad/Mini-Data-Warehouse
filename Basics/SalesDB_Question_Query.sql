SELECT A.OrderID
, CONCAT(B.FirstName, ' ', B.LastName) AS customer_name
, C.Product
, A.Sales
, C.Price
, CONCAT(D.FirstName, ' ', D.LastName) AS salesperson_name
FROM Sales.Orders A
LEFT JOIN Sales.Customers B
	ON A.CustomerID = B.CustomerID
LEFT JOIN Sales.Products C
	ON A.ProductID = C.ProductID
LEFT JOIN Sales.Employees D
	ON A.SalesPersonID = D.EmployeeID

