/*
TEM QUER TER A MESMA QUANTIDADE DE COLUNAS NO UNION
Union - � importamte que as tabelas que ser�o unidas tenham o mesmo numero e tipo de campo. Ja faz distitnct
Union All - N�o se aplica o Distinct sobre o resultado final da consulta
*/

SELECT
    BAIRRO
FROM tabela_de_clientes
UNION
SELECT 
    BAIRRO
FROM tabela_de_vendedores


SELECT
    BAIRRO
FROM tabela_de_clientes
UNION ALL
SELECT 
    BAIRRO
FROM tabela_de_vendedores