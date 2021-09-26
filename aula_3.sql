/*DISTINCT*/
/****** O DISTINCT geralmente é utilizado quando você quer omitir dados de uma determinada tabela,
retornando apenas dados únicos ******/

/** SINTAXE
SELECT DISTINCT coluna1, coluna2
FROM tabela **/

SELECT DISTINCT FirstName
FROM person.Person;

/* DESAFIO 2 */
/***** QUANTOS SOBRENOMES ÚNICOS TEMOS EM NOSSA TABELA PERSON.PERSON? *****/

SELECT DISTINCT LastName
FROM person.Person;

-- Resposta: Temos 1.206 sobrenomes únicos em nossa tabela --