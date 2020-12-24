/*
FULL JOIN - RETORNA TODOS OS REGISTROS DE TODAS AS TABELAS QUE TEM RELACIONAMENTO TANTO DA DIREITA COMO DA ESQUERDA ONDE NAO HOUVER ELE TRAZ NULL
( COMO SE FOSSE UM LEFT E UM RIGHT AO MESMO TEMPO)

CROSS JOIN - RETORNA O PRODUTO CARTESIANO DAS DUAS TABELAS (Nao precisa do on porque o propio comando faz o cruzamento  dos campos) -- todas conbinacoes

*/

SELECT 
        tabela_de_vendedores.NOME    AS NOME_VEDENDOR
        ,tabela_de_vendedores.BAIRRO AS BAIRRO_VEDENDOR
        ,tabela_de_clientes.NOME     AS NOME_CLIENTE
        ,tabela_de_clientes.BAIRRO   AS BAIRRO_CLIENTE

FROM tabela_de_vendedores
INNER JOIN tabela_de_clientes ON tabela_de_vendedores.BAIRRO =tabela_de_clientes.BAIRRO;



SELECT 
        tabela_de_vendedores.NOME    AS NOME_VEDENDOR
        ,tabela_de_vendedores.BAIRRO AS BAIRRO_VEDENDOR
        ,tabela_de_clientes.NOME     AS NOME_CLIENTE
        ,tabela_de_clientes.BAIRRO   AS BAIRRO_CLIENTE

FROM tabela_de_vendedores
LEFT JOIN tabela_de_clientes ON tabela_de_vendedores.BAIRRO =tabela_de_clientes.BAIRRO;



SELECT 
        tabela_de_vendedores.NOME    AS NOME_VEDENDOR
        ,tabela_de_vendedores.BAIRRO AS BAIRRO_VEDENDOR
        ,tabela_de_clientes.NOME     AS NOME_CLIENTE
        ,tabela_de_clientes.BAIRRO   AS BAIRRO_CLIENTE

FROM tabela_de_vendedores
RIGHT JOIN tabela_de_clientes ON tabela_de_vendedores.BAIRRO =tabela_de_clientes.BAIRRO;


SELECT 
        tabela_de_vendedores.NOME    AS NOME_VEDENDOR
        ,tabela_de_vendedores.BAIRRO AS BAIRRO_VEDENDOR
        ,tabela_de_clientes.NOME     AS NOME_CLIENTE
        ,tabela_de_clientes.BAIRRO   AS BAIRRO_CLIENTE

FROM tabela_de_vendedores
FULL JOIN tabela_de_clientes ON tabela_de_vendedores.BAIRRO =tabela_de_clientes.BAIRRO;


SELECT 
        tabela_de_vendedores.NOME    AS NOME_VEDENDOR
        ,tabela_de_vendedores.BAIRRO AS BAIRRO_VEDENDOR
        ,tabela_de_clientes.NOME     AS NOME_CLIENTE
        ,tabela_de_clientes.BAIRRO   AS BAIRRO_CLIENTE

FROM tabela_de_vendedores, tabela_de_clientes;
