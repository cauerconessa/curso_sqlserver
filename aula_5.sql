-- COUNT --

/* O comando COUNT retorna o número de linhas contadas, de acordo com a condição que foi imposta*/

/*** SINTAXE

SELECT COUNT (*)
FROM tabela;

SELECT COUNT (coluna1)
FROM tabela;

SELECT COUNT (DISTINCT coluna1)
FROM tabela; ***/

/********* SELECT COUNT (*)
FROM person.Person;

SELECT COUNT (Title)
FROM person.Person;

SELECT COUNT (DISTINCT Title)
FROM person.Person; *********/

-- DESAFIO 6 --

/* QUANTOS PRODUTOS TEMOS CADASTRADOS EM NOSSA TABELA DE PRODUTOS? (production.product)*/

SELECT COUNT (*)
FROM production.Product;

-- Resposta: Temos 504 produtos cadastrados

-- DESAFIO 7 --

/* QUANTOS TAMANHOS DE PRODUTOS TEMOS CADASTRADOS EM NOSSA TABELA? (tamanhos únicos)*/

SELECT COUNT (DISTINCT Size)
FROM Production.Product;

-- Resposta: Dentro dos 504 produtos cadastrados, temos 18 com tamanhos únicos

-- DESAFIO 8 --

/* QUANTOS TAMANHOS DIFERENTES DE PRODUTOS TEMOS CADASTRADOS EM NOSSA TABELA?*/

SELECT COUNT (Size)
FROM Production.Product;

-- Resposta: Dentro dos 504 produtos cadastrados, temos 211 com tamanhos diferentes