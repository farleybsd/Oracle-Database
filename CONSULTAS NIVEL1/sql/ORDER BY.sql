SELECT * FROM tabela_de_produtos;

SELECT * FROM tabela_de_produtos ORDER BY preco_de_lista; -- ASC DO MENOR PARA O MAIOR

SELECT * FROM tabela_de_produtos ORDER BY preco_de_lista desc; -- DESC DO MAIOR PARA O MENOR


SELECT * FROM tabela_de_produtos ORDER BY nome_do_produto;

SELECT
    *
FROM tabela_de_produtos ORDER BY
 embalagem  DESC, nome_do_produto ASC;