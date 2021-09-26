-- INNER JOIN --

/* Existem 3 tipos gerais de JOINS:

- INNER JOIN, OUTER JOIN, SELF-JOIN */

/*** SINTAXE

SELECT C.ClienteId, C.Nome, E.Rua, E.Cidade
FROM Cliente C
INNER JOIN Endereco E ON E.EnderecoId = C.EnderecoId ***/

-- BusinnesEntityId, FirstName, LastName, EmailAddress

SELECT TOP 10 *
FROM Person.Person;

SELECT TOP 10 *
FROM Person.EmailAddress;

SELECT p.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress
FROM Person.Person AS p
INNER JOIN Person.EmailAddress PE on p.BusinessEntityID = pe.BusinessEntityID;

-- Vamos dizer que nós queremos os nomes dos produtos, o preço e as informações de suas subcategorias
-- ListPrice, Nome do Produto, Nome da Subcategoria

SELECT TOP 10 *
FROM Production.Product;

SELECT TOP 10 *
FROM Production.ProductSubcategory;

SELECT pr.ListPrice, pr.Name, pc.Name
FROM Production.Product Pr
INNER JOIN Production.ProductSubcategory PC on pc.ProductSubcategoryID = pr.ProductSubcategoryID;

-- DESAFIO 26 --

-- BusinessEntityId, Name, PhoneNumberTypeId, PhoneNumer

SELECT TOP 10 *
FROM Person.PhoneNumberType;

SELECT TOP 10 *
FROM Person.PersonPhone;

SELECT pn.BusinessEntityId, pt.Name, pt.PhoneNumberTypeID, pn.PhoneNumber
FROM Person.PhoneNumberType pt
INNER JOIN Person.PersonPhone pn on pt.PhoneNumberTypeID = pn.PhoneNumberTypeID;

-- DESAFIO 27 --

-- AddressId, City, StateProvinceId, Nome do Estado

SELECT TOP 10 *
FROM person.Address;

SELECT TOP 10 *
FROM Person.StateProvince;

SELECT pa.AddressID, pa.City, ps.StateProvinceID, ps.Name
FROM Person.Address PA
INNER JOIN Person.StateProvince PS on pa.StateProvinceID = ps.StateProvinceID;