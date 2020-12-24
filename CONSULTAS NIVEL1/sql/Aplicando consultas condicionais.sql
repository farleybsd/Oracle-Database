select * from tabela_de_produtos where sabor = 'Manga' or tamanho = '470 ml';

select * from tabela_de_produtos where sabor = 'Manga' and tamanho = '470 ml';

select * from t..labela_de_produtos where not (sabor = 'Manga' and tamanho = '470 ml');

select * from tabela_de_produtos where not (sabor = 'Manga' or tamanho = '470 ml');


select * from tabela_de_produtos where  sabor = 'Manga' and not(tamanho = '470 ml');


select * from tabela_de_produtos where sabor in('Laranja','Manga');

select * from tabela_de_clientes where cidade in('Rio de Jameiro','Sao Paulo') and idade >=20;

select * from tabela_de_clientes where cidade in('Rio de Jameiro','Sao Paulo') and (idade >=20 and idade <=22);