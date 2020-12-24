/*

lEFT JOIN - Retorna todos da tabela da esquerda e somente os dados correspodente na da direita(se existir)
RIGHT JOIN - RETORNA TODOS DA TABELA DA DIREITA E SOMENTE  OS CORRESPODENTE NA DA DIREITA

*/

SELECT COUNT(*) FROM tabela_de_clientes;

SELECT
        CPF,
        COUNT(*)
FROM notas_fiscais
GROUP BY CPF;

-- LEFT JOIN
SELECT DISTINCT
        C.CPF AS CPF_DO_CLIENTE,
        C.NOME,
        N.CPF AS CPF_DA_NOTA
FROM tabela_de_clientes c
LEFT JOIN notas_fiscais N ON C.CPF = N.CPF
WHERE C.CPF IS NULL;

-- RIGHT JOIN 
SELECT DISTINCT
        C.CPF AS CPF_DO_CLIENTE,
        C.NOME,
        N.CPF AS CPF_DA_NOTA
FROM notas_fiscais N  
RIGHT JOIN tabela_de_clientes c ON C.CPF = N.CPF
WHERE C.CPF IS NULL;