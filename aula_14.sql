-- HAVING --

/* O comando HAVING é muito utilizado em junção com o GROUP BY para filtrar resultados de um agrupamento */

/*** SINTAXE

SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1
HAVING condicao; ***/

/** A grande diferença entre HAVING e WHERE é que o HAVING é aplicado depois que os dados
já foram agrupados, enquanto o WHERE é aplicado antes dos dados serem agrupados. **/

-- Exemplo: Queremos saber quais nomes no sistema em uma ocorrência maior que 10 vezes

SELECT FirstName, COUNT(FirstName) AS 'QUANTIDADE'
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;

SELECT FirstName, COUNT(FirstName) AS 'QUANTIDADE'
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;

-- Exemplo: Queremos saber quais produtos que no total de vendas
-- estão entre 162k a 500k

SELECT productid, SUM(linetotal) AS 'TOTAL'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(linetotal) BETWEEN 162000 AND 500000;

-- DESAFIO 21 --

/* Estamos querendo identificar as províncias(stateProvinceID) com
o maior número de cadastros no nosso sistema, então é preciso encontrar quais 
províncias estão registradas no banco de dados mais que 1000 vezes */

SELECT StateProvinceID, COUNT(StateProvinceID)
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000;

-- DESAFIO 22 -- 

/* Sendo que se trata de uma multinacional, os gerentes querem saber quais produtos(productid)
não estão trazendo em média no mínimo 1 milhão em total de vendas(linetotal) */

SELECT ProductID, AVG(LineTotal) AS 'MEDIA VENDAS'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000;