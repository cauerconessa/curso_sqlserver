-- GROUP BY --

/* O GROUP BY divide o resultado da sua pesquisa em grupos

- Para cada grupo que você aplicar uma função de agregação por exemplo:
	- calcular a soma de itens
	- contar o número de itens em uma tabela
Você precisará agrupar esses dados, são nesses casos que utilizamos o GROUP BY */

/*** SINTAXE

SELECT coluna1, funcaoAgregacao (coluna2)
FROM nomeTabela
GROUP BY coluna1; ***/

SELECT *
FROM Sales.SalesOrderDetail;

SELECT SpecialOfferID, SUM(UnitPrice) AS 'SOMA'
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID;

SELECT ProductID, COUNT(ProductID) AS 'CONTAGEM'
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

SELECT FirstName, COUNT(FirstName) AS 'CONTAGEM'
FROM Person.Person
GROUP BY FirstName;

SELECT Color, AVG(ListPrice) AS 'MEDIA PRECO'
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color;

-- DESAFIO 17 --

/* QUANTAS PESSOAS TEM O MESMO MIDDLENAME? (AGRUPAR PELO MIDDLENAME) */

SELECT MiddleName, COUNT(FirstName) AS 'CONTAGEM NOME'
FROM Person.Person
GROUP BY MiddleName
ORDER BY MiddleName;

-- DESAFIO 18 --

/* EM MÉDIA QUAL A QUANTIDADE DE QUE CADA PRODUTO É VENDIDO NA LOJA? */

SELECT ProductID, AVG(OrderQty) AS 'MEDIA VENDAS'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY ProductID;

-- DESAFIO 19 --

/* QUAIS FORAM AS 10 VENDAS QUE NO TOTAL TIVERAM OS MAIORES VALORES DE VENDA (line total) ? Do maior para o menor valor */

SELECT TOP 10 ProductID, SUM(LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) desc;

-- DESAFIO 20 --

/* QUANTOS PRODUTOS E QUAL A QUANTIDADE MEDIA DE PRODUTOS TEMOS CADASTRADOS NAS NOSSAS ORDENS DE SERVIÇO (WORKORDER),
AGRUPADOR POR PRODUTCID */

SELECT ProductID, COUNT(ProductID) AS 'CONTAGEM', AVG(OrderQty) AS 'MEDIA'
FROM Production.WorkOrder
GROUP BY ProductID;