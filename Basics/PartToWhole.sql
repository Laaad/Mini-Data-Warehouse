
SELECT
	OrderId,
	OrderDate,
	Sales,
	ProductId,
	AVG(Sales) OVER() average,
	MIN(Sales) OvER() minimum,
	MAX(Sales) OVER() maximum,
	SUM(Sales) OVER() Total,
	SUM(Sales) OVER(PARTITION BY ProductId) [Total Sales Per Product],
	ROUND(CAST(Sales AS Float)/SUM(Sales) OVER() *100, 2) AS [Percentage Contribution]
FROM Sales.Orders