-- DATEPART --

SELECT SalesOrderID, DATEPART(month, OrderDate) AS Mês
FROM Sales.SalesOrderHeader

SELECT AVG(TotalDue) AS Media, DATEPART(month, OrderDate) AS Mês
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(month, OrderDate)
ORDER BY Mes

-- sempre que houver uma função de agregação (avg, sum, min) é necessário utilizar o GROUP BY

-- DESAFIO 29 --

/* Utilizando uma tabela de sua escolha, extrair as informações de mês e ano com o DATEPART */

SELECT AVG(LastReceiptCost) AS 'MEDIA CUSTO', DATEPART(month, LastReceiptDate) MES
FROM Purchasing.ProductVendor
GROUP BY DATEPART(month, LastReceiptDate)
ORDER BY MES