-- UNION --

/* o operador UNION combina dois ou mais resultados de um select em um resultado apenas. */

/*** SINTAXE

SELECT coluna1. coluna2
FROM tabela1
UNION
SELECT coluna1, coluna2
FROM tabela2; ***/

SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product WHERE Name like '%Chain%'
UNION
SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product WHERE Name like '%Decal%'

SELECT FirstName, MiddleName, Title
FROM person.person WHERE Title = 'Mr.'
UNION
SELECT FirstName, MiddleName, Title
FROM Person.Person WHERE MiddleName = 'A'

-- DESAFIO 28 --

/* Utilizar qualquer uma das tabelas do banco de dados e selecionar duas tabelas e juntar os dados utilizando
o UNION */

SELECT ProductID, LineTotal
FROM Sales.SalesOrderDetail WHERE OrderQty > 100
UNION
SELECT ProductID, ListPrice
FROM Production.Product WHERE ListPrice > 500