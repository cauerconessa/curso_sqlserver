/*DISTINCT*/
/****** O DISTINCT geralmente � utilizado quando voc� quer omitir dados de uma determinada tabela,
retornando apenas dados �nicos ******/

/** SINTAXE
SELECT DISTINCT coluna1, coluna2
FROM tabela **/

SELECT DISTINCT FirstName
FROM person.Person;

/* DESAFIO 2 */
/***** QUANTOS SOBRENOMES �NICOS TEMOS EM NOSSA TABELA PERSON.PERSON? *****/

SELECT DISTINCT LastName
FROM person.Person;

-- Resposta: Temos 1.206 sobrenomes �nicos em nossa tabela --