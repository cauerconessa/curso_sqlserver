-- LEFT OUTER JOIN --
-- LEFT JOIN

-- Quero descobrir quais pessoas tem um cartão de crédito registrado

SELECT *
FROM Person.Person PP
INNER JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID;
-- INNER JOIN : 19.118 LINHAS

SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID;
-- INNER JOIN : 19.972 LINHAS