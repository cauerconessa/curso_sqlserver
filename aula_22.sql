-- OPERAÇÕES MATEMÁTICAS --

SELECT UnitPrice + LineTotal --soma
FROM Sales.SalesOrderDetail

SELECT UnitPrice - LineTotal -- subtração
FROM Sales.SalesOrderDetail

SELECT UnitPrice * LineTotal -- multiplicação
FROM Sales.SalesOrderDetail

SELECT UnitPrice / LineTotal -- divisão
FROM Sales.SalesOrderDetail

SELECT AVG(LineTotal) -- média
FROM Sales.SalesOrderDetail

SELECT SUM(LineTotal) -- soma
FROM Sales.SalesOrderDetail

SELECT MIN(LineTotal) -- valor mínimo
FROM Sales.SalesOrderDetail

SELECT MAX(LineTotal) -- valor máximo
FROM Sales.SalesOrderDetail

SELECT ROUND(LineTotal,2) -- arrendondamento de valores
FROM Sales.SalesOrderDetail

SELECT SQRT(LineTotal) -- raíz quadrada
FROM Sales.SalesOrderDetail