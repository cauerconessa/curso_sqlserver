-- BETWEEN --

/* o comando BETWEEN é usado para encontrar dados entre um valor mínimo e valor máximo */

/*** SINTAXE

SELECT *
FROM tabela
WHERE coluna BETWEEN minimo and maximo; ***/

SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 and 1500;

SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 and 1500;

SELECT *
FROM HumanResources.Employee;

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate;

-- IN --
 
/* UTILIZAMOS O OPERADOS IN JUNTO COM O WHERE PARA VERIFICAR SE UM VALOR
CORRESPONDE COM QUALQUER OUTRO VALOR PASSADO

valor IN (valor1, valor2)
valor IN (SELECT valor FROM nomeDaTabela) -> chamado também de sub select ou sub query */

SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13);

SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN (2,7,13);

-- LIKE --

/* UTILIZAMOS QUANDO PRECISAMOS ENCONTRAR DENTRO DO BANCO DE DADOS VALORES QUE SE PAREÇAM COM ALGO
Ex.: encontrar o nome de uma pessoa que comecesse com OVI, mas você não sabe o restante. */

-- percentual no fim, para achar palavras que começam com tal coisa
SELECT *
FROM Person.Person
WHERE FirstName LIKE 'ovi%';

-- percentual no começo, para achar palavras que terminam com tal coisa
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%to';

-- percentual no começo e no fim, para achar palavras que tenham tal coisa no meio
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%essa%';


/* utiliando o underline, conseguimos limitar nossa busca para 1 caractere após a palavra
que queremos encontrar */
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ro_';

-- DESAFIO 11 --

/* QUANTOS PRODUTOS TEMOS CADASTRADOS NO SISTEMAQUE CUSTAM MAIS DE 1500 DOLARES? */

SELECT COUNT (ListPrice)
FROM Production.Product
WHERE ListPrice > 1500;

-- Resposta: Temos 39 produtos que custam mais que 1500 dólares

-- DESAFIO 12 --

/* QUANTAS PESSOAS TEMOS COM O SOBRENOME QUE INICIA COM A LETRA P? */

SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName like 'P%';

-- Repsota: Temos 1187 pessoas que tem seu sobrenome iniciado com a letra P

-- DESAFIO 13 --

/* EM QUANTAS CIDADES ÚNICAS ESTÃO CADASTRADOS NOSSOS CLIENTES? */

SELECT *
FROM Person.Address;

SELECT COUNT(DISTINCT City)
FROM Person.Address;

-- Resposta: Nossos clientes estão cadastrados em 575 cidades

-- DESAFIO 14 --

/* QUAIS SÃO AS CIDADES ÚNICAS QUE TEMOS CADASTRADAS EM NOSSO SISTEMA? */

SELECT DISTINCT	City
FROM Person.Address
ORDER BY City;

-- DESAFIO 15 --

/* QUANTOS PRODUTOS VERMELHOS TEM PREÇO ENTRE 500 A 1000 DOLARES? */

SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'red'
AND ListPrice BETWEEN 500 AND 1000;

-- Resposta: Temos o total de 11 produtos vermelhos com o preço entre 500 a 1000 dólares

-- DESAFIO 16 --

/* QUANTOS PRODUTOS CADASTRADOS TEM A PALAVRA 'ROAD' NO NOME DELES? */

SELECT COUNT(*)
FROM Production.Product
WHERE Name like '%road%';

-- Temos 103 produtos cadastrados com a palavra 'road'