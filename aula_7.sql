-- ORDER BY

/* O comando ORDER BY é utilizado quando queremos organizar os resultados de forma crescente ou decrescente */

/*** SINTAXE

SELECT coluna1, coluna2
FROM tabela
ORDER BY coluna1 asc/desc; ***/

SELECT *
FROM person.Person
ORDER BY FirstName asc;

SELECT *
FROM person.Person
ORDER BY FirstName desc;

SELECT *
FROM person.Person
ORDER BY FirstName asc, LastName desc;

SELECT FirstName, MiddleName, LastName
FROM person.Person
ORDER BY MiddleName asc;

-- DESAFIO 9 --

/* OBTER O PRODUCTID DOS 10 PRODUOS MAIS CAROS CADASTRADOS NO SISTEMA, LISTANDO DO
MAIS CARO PARA O MAIS BARATO */

SELECT *
FROM Production.Product;

SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice desc;

-- DESAFIO 10 --

/* OBTER O NOME E NÚMERO DO PRODUTO DOS PRODUTOS QUE TEM O PRODUCTID ENTRE 1~4 */

SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc;