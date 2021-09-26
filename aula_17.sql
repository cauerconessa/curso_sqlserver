-- TIPOS DE JOIN --

/* 
1- INNER JOIN
Retorna apenas os resultados que correspondem (existem)
tanto na tabela A como na tabela B

SELECT *
FROM tabelaA
INNER JOIN tabelaB ON tabelaA.nome = tabelaB.nome;

2- FULL OUTER JOIN
Retorna um conjunto de todos registros correspondentes da tabelaA e
tabelaB quando são iguais. E além disso se não houver valores correspondentes,
ele simplesmente irá preencher esse lado com 'null'

SELECT * FROM tabelaA
FULL OUTER JOIN tabelaB
ON tabelaA.nome = tabelaB.nome;

3 - LEFT OUTER JOIN
Retorna um conjunto de todos os registros da tabelaA e
além isso, os registros correspondentes (quando disponíveis)
na tabelaB. Se não houver registros correspondentes ele simplesmente
preenche com 'null'

SELECT * FROM tabelaA
LEFT JOIN tabelaB
ON tabelaA.nome = tabelaB.nome;