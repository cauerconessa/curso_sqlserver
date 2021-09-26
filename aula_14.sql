-- HAVING --

/* O comando HAVING � muito utilizado em jun��o com o GROUP BY para filtrar resultados de um agrupamento */

/*** SINTAXE

SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1
HAVING condicao; ***/

/** A grande diferen�a entre HAVING e WHERE � que o HAVING � aplicado depois que os dados
j� foram agrupados, enquanto o WHERE � aplicado antes dos dados serem agrupados. **/

-- Exemplo: Queremos saber quais nomes no sistema em uma ocorr�ncia maior que 10 vezes

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
-- est�o entre 162k a 500k

SELECT productid, SUM(linetotal) AS 'TOTAL'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(linetotal) BETWEEN 162000 AND 500000;

-- DESAFIO 21 --

/* Estamos querendo identificar as prov�ncias(stateProvinceID) com
o maior n�mero de cadastros no nosso sistema, ent�o � preciso encontrar quais 
prov�ncias est�o registradas no banco de dados mais que 1000 vezes */

SELECT StateProvinceID, COUNT(StateProvinceID)
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000;

-- DESAFIO 22 -- 

/* Sendo que se trata de uma multinacional, os gerentes querem saber quais produtos(productid)
n�o est�o trazendo em m�dia no m�nimo 1 milh�o em total de vendas(linetotal) */

SELECT ProductID, AVG(LineTotal) AS 'MEDIA VENDAS'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000;