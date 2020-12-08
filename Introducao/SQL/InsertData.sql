Insert into  tb_clientes(
CPF,
nome,
endereco1,
endereco2,
bairro,
cidade,
estadado,
cep,
idade,
sexo,
limite_credito,
volume_compra,
primeira_compra,
data_nascimento)VALUES(
'11405263679',
'João da Silva',
'Rua Projetada A numero 10',
null,
'Vila Roman',
'Tres Rios',
'Rj',
'2222222',
53,
'M',
20000.00,
2000,
0,
TO_DATE('12/10/1965','DD/MM/YYYY')
);



Insert into  tb_clientes(
CPF,
nome,
endereco1,
endereco2,
bairro,
cidade,
estadado,
cep,
idade,
sexo,
limite_credito,
volume_compra,
primeira_compra,
data_nascimento)VALUES(
'11405263680',
'João da Silva',
'Rua Projetada A numero 10',
null,
'Vila Roman',
'Tres Rios',
'Rj',
'2222222',
53,
'M',
20000.00,
2000,
0,
TO_DATE('12/10/1965','MM/DD/YYYY')
);


select * from tb_clientes;


DELETE  FROM tb_clientes WHERE CPF = '11405263680';

