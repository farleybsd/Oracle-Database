/*
* 2.0     Segundo Passo Montar um Select Temporario
* 2.1     Sera montado uma variavel vendas com o relacionamento das notas e seus item 
* 2.2     Depois fazer amarracao do cpf da nota com o Cpf do cliente
*/
SELECT
        CADASTRO.CPF,
        CADASTRO.NOME,
        VENDAS.MES_ANO,
        CADASTRO.VOLUME_DE_COMPRA,
        VENDAS.VOLUME_VENDIDO AS VOLUME_LIMITE,
        CASE WHEN CADASTRO.VOLUME_DE_COMPRA <= VENDAS.VOLUME_VENDIDO THEN 'Vendas Válidas'
             ELSE 'VENDAS INVÁLIDAS' END AS RESULTADO
FROM(
/*
* 1.0 Primeiro Passo 
* 1.1 Foi montar o relacionamento de notas Fiscais com o items  da nota
* 1.2 Usar a função de agregação sum para somar a quantidade dos items das notas fiscais
* 1.3 Fazer o agrupamento por cpf e data da venda
*/
SELECT
        NF.CPF,
        TO_CHAR(NF.DATA_VENDA,'YYYY-MM') AS MES_ANO,
        SUM(INF.QUANTIDADE) AS VOLUME_VENDIDO
        
FROM NOTAS_FISCAIS NF

INNER JOIN ITENS_NOTAS_FISCAIS INF
       ON NF.NUMERO = INF.NUMERO
       
GROUP BY 
        NF.CPF,
        TO_CHAR(NF.DATA_VENDA,'YYYY-MM') ) VENDAS -- Fim Segundo Passo
-- FIM Primeiro passo
/*
* 3.0 Terceiro Passo
* 3.1 Fazer o Join da tabela temporaria vendas 
* 3.2 dentro do inner join criar o select da tabela cleintes trazendo o cpf para relacionar e o VOLUME_DE_COMPRA para fazer o filtro
* 3.3 Depois Ligar os campos VENDAS.CPF = CADASTRO.CPF
*/
INNER JOIN (
SELECT CPF,NOME,VOLUME_DE_COMPRA FROM TABELA_DE_CLIENTES) CADASTRO
        ON VENDAS.CPF = CADASTRO.CPF
-- Fim Terceiro Passo
WHERE MES_ANO = '2018-01'




