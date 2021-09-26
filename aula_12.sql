-- MIN MAX SUM AVG --

/* São as principais funções de agregação utilizadas na linguagem SQL, combinam dados de uma tabela em 1 resultado só */

SELECT TOP 10 SUM(linetotal) --soma
FROM Sales.SalesOrderDetail;

SELECT TOP 10 MIN(linetotal) --valor mínimo
FROM Sales.SalesOrderDetail;

SELECT TOP 10 MAX(linetotal) --valor máximo
FROM Sales.SalesOrderDetail;

SELECT TOP 10 AVG(linetotal) --média
FROM Sales.SalesOrderDetail;