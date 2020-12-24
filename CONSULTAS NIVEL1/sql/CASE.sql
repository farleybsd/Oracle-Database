SELECT
NOME_DO_PRODUTO,
PRECO_DE_LISTA,
(CASE WHEN PRECO_DE_LISTA > 12 THEN 'Produto Caro'
     WHEN PRECO_DE_LISTA >=7 AND PRECO_DE_LISTA < 12 THEN 'Produto Em Conta'
   ELSE 'Produto Barato' 
   END) AS STATUS_PRECO
   FROM tabela_de_produtos
   WHERE sabor= 'Manga';
   
   
   
   
SELECT
        EMBALAGEM,
        (CASE WHEN PRECO_DE_LISTA > 12 THEN 'Produto Caro'
                WHEN PRECO_DE_LISTA >=7 AND PRECO_DE_LISTA < 12 THEN 'Produto Em Conta'
                ELSE 'Produto Barato' 
                END) AS STATUS_PRECO,
                AVG(PRECO_DE_LISTA) AS MEDIA_PRECO
FROM tabela_de_produtos
GROUP BY 
embalagem,
(CASE WHEN PRECO_DE_LISTA > 12 THEN 'Produto Caro'
                WHEN PRECO_DE_LISTA >=7 AND PRECO_DE_LISTA < 12 THEN 'Produto Em Conta'
                ELSE 'Produto Barato' 
                END);
