/*
[X] Having - E uma condição(Filtro) que se aplica ao resultado de uma agregração ou seja no valor do group by 
- Resumindo  o having e um filtro especifico para group by

*/

SELECT
        ESTADO,
        SUM(LIMITE_DE_CREDITO) AS SOMA_LIMITE
FROM TABELA_DE_CLIENTES
GROUP BY ESTADO
HAVING SUM(LIMITE_DE_CREDITO) >=900000 ;


SELECT
         EMBALAGEM,
         MAX(PRECO_DE_LISTA) AS Maior_Preco
         MIN(PRECO_DE_LISTA) AS Menor_Preco
FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM
HAVING SUM(PRECO_DE_LISTA) <=80 ;