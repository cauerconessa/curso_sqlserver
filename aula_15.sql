-- AS --

/* o AS serve para renomear, dar "apelidos" as colunas */

SELECT TOP 10 AVG(listprice) AS 'Preço Médio'
FROM Production.Product;

-- DESAFIO 23 --

/* Encontrar o FirstName e LastName (person.person) e traduzir para o português usando o AS */

SELECT FirstName AS 'Nome',
LastName AS 'Sobrenome'
FROM Person.Person;

-- DESAFIO 24 --

/* Encontrar ProductNumber (production.product) e traduzir para o português usando o AS */

SELECT ProductNumber AS 'Código Produto'
FROM Production.Product;

-- DESAFIO 25 --

/* Encontrar unitPrice (sales.SalesOrderDetail) e traduzir para o português usando o AS */

SELECT UnitPrice AS 'Preço Unitário'
FROM Sales.SalesOrderDetail;