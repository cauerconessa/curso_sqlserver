-- OPERA��ES MATEM�TICAS --

SELECT UnitPrice + LineTotal --soma
FROM Sales.SalesOrderDetail

SELECT UnitPrice - LineTotal -- subtra��o
FROM Sales.SalesOrderDetail

SELECT UnitPrice * LineTotal -- multiplica��o
FROM Sales.SalesOrderDetail

SELECT UnitPrice / LineTotal -- divis�o
FROM Sales.SalesOrderDetail

SELECT AVG(LineTotal) -- m�dia
FROM Sales.SalesOrderDetail

SELECT SUM(LineTotal) -- soma
FROM Sales.SalesOrderDetail

SELECT MIN(LineTotal) -- valor m�nimo
FROM Sales.SalesOrderDetail

SELECT MAX(LineTotal) -- valor m�ximo
FROM Sales.SalesOrderDetail

SELECT ROUND(LineTotal,2) -- arrendondamento de valores
FROM Sales.SalesOrderDetail

SELECT SQRT(LineTotal) -- ra�z quadrada
FROM Sales.SalesOrderDetail