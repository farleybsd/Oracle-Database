/*

Sub-consultas.Podemos usar uma subconsulta dentro de uma consulta

*/

-- Usando um SubConsultaSimples
SELECT
    *
FROM tabela_de_clientes C
WHERE c.bairro IN(SELECT DISTINCT BAIRRO
                    FROM tabela_de_vendedores);
                    
 -- Usando o Having                   
SELECT
    EMBALAGEM,
    SUM(PRECO_DE_LISTA) AS SOMA_PRECO
FROM tabela_de_produtos
GROUP BY embalagem
HAVING SUM(PRECO_DE_LISTA) <=80;


-- Fazendo subconsulta temporaria
SELECT
    TEMP.EMBALAGEM,
    TEMP.SOMA_PRECO
FROM
    (SELECT
        EMBALAGEM,
        SUM(PRECO_DE_LISTA) AS SOMA_PRECO
    FROM tabela_de_produtos
    GROUP BY embalagem) TEMP
    WHERE TEMP.SOMA_PRECO <=80;