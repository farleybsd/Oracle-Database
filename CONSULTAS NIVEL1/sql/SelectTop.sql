/*
* Atenção apenas funciona na clausula where usando a clausula <= e a quantidade

*/

select * from tabela_de_clientes where ROWNUM <=2;

SELECT ROWNUM, CODIGO_DO_PRODUTO,NOME_DO_PRODUTO FROM tabela_de_produtos;

SELECT ROWNUM, CODIGO_DO_PRODUTO,NOME_DO_PRODUTO FROM tabela_de_produtos
WHERE ROWNUM<=5;

SELECT ROWNUM, CODIGO_DO_PRODUTO,NOME_DO_PRODUTO FROM tabela_de_produtos
WHERE ROWNUM <10;