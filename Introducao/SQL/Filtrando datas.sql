select * from tb_clientes where  data_nascimento='07/10/95';

select * from tb_clientes where  data_nascimento= TO_DATE('07/10/1995','DD/MM/YYYY');

select * from tb_clientes where  data_nascimento > TO_DATE('07/10/1995','DD/MM/YYYY');

select * from tb_clientes where  data_nascimento < TO_DATE('07/10/1995','DD/MM/YYYY');

select * from tb_clientes where  To_char(data_nascimento,'MM') =10