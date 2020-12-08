Insert Into tb_produtos (
produto,
Nome,
embalagem,
tamanho,
sabor,
preco_lista)
values(
'1037797',
'Clean - 2 Litros - Laranja',
'Pet',
'2 Litros ',
'Laranja',
16.01);

Insert Into tb_produtos(
produto,
Nome,
Embalagem,
tamanho,
sabor,
preco_lista) VALUES(
'1000889',
'Sabor da Montanha - 700 ml - Uva',
'Garrafa',
'700 ml ',
'Uva',
6.31);


Insert Into tb_produtos(
produto,
nome,
embalagem,
tamanho,
sabor,
preco_lista)VALUES(
'1004327',
'Videria do campo - 1,5 Litros - Melância',
'Pet',
'1,5 Litros ',
'Melância',
19.51);

select p.produto,p.nome,p.embalagem,p.tamanho,p.sabor,p.preco_lista from tb_produtos p