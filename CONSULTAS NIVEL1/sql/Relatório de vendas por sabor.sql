SELECT 
        VENDA_SABOR.SABOR,
        VENDA_SABOR.ANO,
        VENDA_SABOR.QUANTIDADE_VENDIDA,
        TOTAL_VENDA.QUANTIDADE_VENDIDA AS TOTAL,
        ROUND(((VENDA_SABOR.QUANTIDADE_VENDIDA / TOTAL_VENDA.QUANTIDADE_VENDIDA) * 100),2) AS PARTICIPACAO
FROM 

(
                    SELECT
                            TP.SABOR,
                            TO_CHAR(NF.DATA_VENDA,'YYYY') AS ANO,
                            SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDIDA
                            
                    FROM ITENS_NOTAS_FISCAIS INF
                    
                    INNER JOIN TABELA_DE_PRODUTOS TP
                           ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
                           
                    INNER JOIN NOTAS_FISCAIS NF
                            ON NF.NUMERO = INF.NUMERO
                            
                    WHERE  TO_CHAR(NF.DATA_VENDA,'YYYY') = '2016'
                    
                    GROUP BY
                            TP.SABOR,
                            TO_CHAR(NF.DATA_VENDA,'YYYY')
                            
                    ORDER BY SUM(INF.QUANTIDADE) DESC
) VENDA_SABOR

INNER JOIN 
(
                SELECT
                        
                        TO_CHAR(NF.DATA_VENDA,'YYYY') AS ANO,
                        SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDIDA
                        
                FROM ITENS_NOTAS_FISCAIS INF
                
                INNER JOIN TABELA_DE_PRODUTOS TP
                       ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
                       
                INNER JOIN NOTAS_FISCAIS NF
                        ON NF.NUMERO = INF.NUMERO
                        
                WHERE  TO_CHAR(NF.DATA_VENDA,'YYYY') = '2016'
                
                GROUP BY
                        
                        TO_CHAR(NF.DATA_VENDA,'YYYY')
                        
                ORDER BY SUM(INF.QUANTIDADE) DESC
)TOTAL_VENDA

ON 
VENDA_SABOR.ANO = TOTAL_VENDA.ANO


        