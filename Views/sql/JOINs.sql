/*

Joins -> Juntar 

inner join - Retorna somente quando temos chaves correspodente nas duas tabelas

*/

SELECT  
        B.MATRICULA,
        B.nome,
        COUNT(*) AS NUMERO_DE_NOTAS
FROM notas_fiscais A
INNER JOIN tabela_de_vendedores B ON A.matricula = B.matricula
GROUP BY 
B.MATRICULA,
B.nome;