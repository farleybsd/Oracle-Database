-- DISTINCT - Irá retornar somente linhas com valores diferentes.

select embalagem from tabela_de_produtos;

select DISTINCT embalagem from tabela_de_produtos;

select sabor from tabela_de_produtos;

SELECT DISTINCT SABOR from tabela_de_produtos;

SELECT DISTINCT SABOR from tabela_de_produtos WHERE SABOR = 'Laranja';


SELECT DISTINCT embalagem,SABOR from tabela_de_produtos;