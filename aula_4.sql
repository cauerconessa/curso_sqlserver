/* WHERE */

/*** SINTAXE

SELECT coluna1, coluna2, coluna_n
FROM tabela
WHERE condicao; ***/

/*

OPERADOR	-	DESCRIÇÃO
=				IGUAL
>				MAIOR QUE
<				MENOR QUE
>=				MAIOR QUE OU IGUAL
<=				MENOR QUE OU IGUAL
<>				DIFERENTE DE
AND				OPERADOR LÓGICO E
OR				OPERADOR LÓGICO OU

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

/* A EQUIPE DE PRODUÇÃO PRECISA DO NOME DE TODAS AS PEÇAS QUE PESAM MAIS QUE 500kg
MAS NÃO MAIS QUE 700Kg para inspeção*/

SELECT Name
FROM production.Product
WHERE Weight > 500 and Weight <= 700;

-- DESAFIO 4 --

/* FOI PEDIDO PELO MARKETING UMA RELAÇÃO DE TODOS OS EMPREGADOS(EMPLOYEES) QUE SÃO CASADOS
(SINGLE = SOLTEIRO, MARRIED = CASADO) E SÃO ASSALARIADOS(SALARIED) */

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1;

-- DESAFIO 5 -- 

/* Um usuário chamado Peter Krebs está devendo um pagamento, consiga o e-mail dele para que possamos
enviar uma cobrança.

(utilizar a tabela person.person e a tabela person.emailaddress) */

SELECT *
FROM person.person
WHERE LastName = 'Krebs';

SELECT *
FROM person.EmailAddress
WHERE BusinessEntityID = '26';