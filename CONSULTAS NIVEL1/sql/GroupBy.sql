-- Como se fosse um distinct vai pegar todos os valores iguais.Juntando os valores 
-- Os valores textos e datas ele junta 
-- os valores numericos realiza uma operação matematica.
-- SEMPRE O GROUP BY PRIMEIRO DEPOIS ORDER BY
/*
*************** Operadores ****************

* SUM   : SOMA
* MAX   : Máximo 
* MIN   : MÍNIMO
* AVG   : MÉDIA 
* COUNT : Conta as ocorrências
*/

SELECT * FROM TABELA_DE_CLIENTES;

SELECT estado,limite_de_credito  FROM TABELA_DE_CLIENTES;

SELECT ESTADO,SUM(limite_de_credito) AS TOTALCREDITO FROM TABELA_DE_CLIENTES GROUP BY estado;

SELECT EMBALAGEM,PRECO_DE_LISTA FROM tabela_de_produtos;

SELECT EMBALAGEM,MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos GROUP BY embalagem;

SELECT EMBALAGEM,COUNT(*) AS NUMERO_PRODUTO FROM tabela_de_produtos GROUP BY embalagem;

SELECT BAIRRO,SUM(limite_de_credito) AS TOTAL_CREDITO FROM TABELA_DE_CLIENTES GROUP BY BAIRRO;

SELECT BAIRRO,SUM(limite_de_credito) AS TOTAL_CREDITO FROM TABELA_DE_CLIENTES 
WHERE cidade = 'Rio de Janeiro' 
GROUP BY BAIRRO;

SELECT ESTADO,BAIRRO,SUM(LIMITE_DE_CREDITO) FROM TABELA_DE_CLIENTES GROUP BY ESTADO,BAIRRO ORDER BY ESTADO,BAIRRO;
