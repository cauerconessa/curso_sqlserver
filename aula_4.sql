/* WHERE */

/*** SINTAXE

SELECT coluna1, coluna2, coluna_n
FROM tabela
WHERE condicao; ***/

/*

OPERADOR	-	DESCRI��O
=				IGUAL
>				MAIOR QUE
<				MENOR QUE
>=				MAIOR QUE OU IGUAL
<=				MENOR QUE OU IGUAL
<>				DIFERENTE DE
AND				OPERADOR L�GICO E
OR				OPERADOR L�GICO OU

*/

SELECT *
FROM person.Person
WHERE LastName = 'miller' and FirstName = 'anna';

SELECT *
FROM production.Product
WHERE color = 'blue' or color = 'black';

/SELECT * 
FROM production.Product
WHERE ListPrice > 1500 and ListPrice < 5000;

SELECT *
FROM production.Product
WHERE color <> 'red';

-- DESAFIO 3 --

/* A EQUIPE DE PRODU��O PRECISA DO NOME DE TODAS AS PE�AS QUE PESAM MAIS QUE 500kg
MAS N�O MAIS QUE 700Kg para inspe��o*/

SELECT Name
FROM production.Product
WHERE Weight > 500 and Weight <= 700;

-- DESAFIO 4 --

/* FOI PEDIDO PELO MARKETING UMA RELA��O DE TODOS OS EMPREGADOS(EMPLOYEES) QUE S�O CASADOS
(SINGLE = SOLTEIRO, MARRIED = CASADO) E S�O ASSALARIADOS(SALARIED) */

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1;

-- DESAFIO 5 -- 

/* Um usu�rio chamado Peter Krebs est� devendo um pagamento, consiga o e-mail dele para que possamos
enviar uma cobran�a.

(utilizar a tabela person.person e a tabela person.emailaddress) */

SELECT *
FROM person.person
WHERE LastName = 'Krebs';

SELECT *
FROM person.EmailAddress
WHERE BusinessEntityID = '26';