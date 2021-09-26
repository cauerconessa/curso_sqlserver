-- MIN MAX SUM AVG --

/* S�o as principais fun��es de agrega��o utilizadas na linguagem SQL, combinam dados de uma tabela em 1 resultado s� */

SELECT TOP 10 SUM(linetotal) --soma
FROM Sales.SalesOrderDetail;

SELECT TOP 10 MIN(linetotal) --valor m�nimo
FROM Sales.SalesOrderDetail;

SELECT TOP 10 MAX(linetotal) --valor m�ximo
FROM Sales.SalesOrderDetail;

SELECT TOP 10 AVG(linetotal) --m�dia
FROM Sales.SalesOrderDetail;