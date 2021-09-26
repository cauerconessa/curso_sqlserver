-- MANIPULA��O DE STRING --

-- CONCAT: tem como fun��o fazer a jun��o de duas colunas
SELECT CONCAT(FirstName, ' ', LastName)
FROM person.person

-- UPPER: deixa todas as letras das palavras em caixa alta
SELECT UPPER(FirstName)
FROM person.person

-- LOWER: deixa todas as letras das palavras min�sculas
SELECT LOWER(FirstName)
FROM person.person

-- LEN: permite fazer a contagem de quantos caracteres tem determinada palavra
SELECT FirstName, LEN(FirstName)
FROM person.person

-- SUBSTRING: fun��o parecida com o LEN, mas te permite escolher quantos caracteres quer e a partir de 
-- um determinado �ndice
SELECT FirstName, SUBSTRING(FirstName, 1, 3) -- coluna firtname, a partir do primeiro �ndice e somente 3 caracteres
FROM person.person

-- REPLACE: te permite substituir uma informa��o pela outra dentro da tabela
SELECT REPLACE(ProductNumber, '-', '#') -- nome da coluna que quer substituir as informa��es, o que quer substituir, pelo que quer substituir
FROM production.product

