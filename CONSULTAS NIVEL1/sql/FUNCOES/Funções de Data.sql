/*
* DATA PARA ORACLE E UM FORMATO NUMERICO
* To_char() perimte alterar o formato de data usado no output de um comando
* SYSDATE Devolve a data do servidor onde corre a base de dados nao necessita de argummentos
*/
SELECT
    sysdate as DataServidor,
    to_char(sysdate,'yyyy-mm-dd hh24-mi-ss') as dataformatada,
    to_char(sysdate,'SCC') as Seculo
FROM dual;
/*
* Months_between(data1,Data2)
* Determina o numero de messes entre a data1 e data2.O resultado pode ser postivo ou negativo
*/
SELECT
    MONTHS_BETWEEN(SYSDATE,data_de_nascimento) 
FROM tabela_de_clientes
where  MONTHS_BETWEEN(SYSDATE,data_de_nascimento) > 300
/*
* Add_Months(data,m)
* Adiciona n messes de calendário á data.O número n tem que ser inteiro e pode ser negativo
*/
SELECT
   data_de_nascimento,
   add_months(data_de_nascimento,3),
   add_months(data_de_nascimento,-6)
FROM tabela_de_clientes
/*
* next_day(data1,c) Devolve a data do proximo dia da semana especificado e a seguir a data1.
* o parametro c pode ser um numero esperado um dia da semana ou uma string (1,'Domingo')(2,'Segunda')
* Conta a proxima seg,ter,quarta,quinta,sexta a partir da data q estou usando o sysdate
*/
SELECT 
SYSDATE,
next_day(SYSDATE,5)
FROM DUAL;
-- LEST_DAY(DATA1) DEVOLVE O ULTIMO DIA DO MES DE DATA1
SELECT 
SYSDATE,
LAST_DAY(SYSDATE)
FROM DUAL;
/*
* TRUNC(DATA1) Devolve a data1 com a hora convertida para as zero horas (12:00 AM).Este comando é muito util
* quando pretedemos comparar datas que tem horas/minutos/segundo diferentes e apenas nos interessa o ano/mes/dia
* TRUNC(DATA1,'YEAR')
* DEVOLVE O PRIMEIRO DIA DO ANO QUE CONTEM A DATA1
* TRUNC(DATA1,'MONTH')
* DEVOLVE O PRIMEIRO DIA DO MES QUE CONTEM A DATA1
* TRUNC(DATA1,'hh24')
* DEVOLVE A DATA (ANO.MES,DIA) E HORA , COM O HORA DE INICIO (00 MINUTOS E 00 SEGUNDOS)
* TRUNC(DATA1,'MI')
* DEVOLVE A DATA (ANO.MES,DIA) E HORA , COM O HORA DE INICIO (00 MINUTOS)
*/

SELECT 
SYSDATE,
to_char(SYSDATE,'YYYY/MM/DD HH:MM:SS')
FROM DUAL;

SELECT 
SYSDATE + 10
FROM DUAL;

SELECT 
SYSDATE - 10
FROM DUAL;


SELECT 
SYSDATE,
MONTHS_BETWEEN(SYSDATE,TO_DATE('2020-O1-01','YYYY-MM-DD'))
FROM DUAL;

SELECT 
SYSDATE,
ADD_MONTHS(SYSDATE,10)
FROM DUAL;

SELECT 
SYSDATE,
NEXT_DAY(SYSDATE,'Quinta')
FROM DUAL;

SELECT 
SYSDATE,
trunc(SYSDATE,'YEAR')
FROM DUAL;

SELECT 
SYSDATE,
trunc(SYSDATE,'MONTH')
FROM DUAL;

SELECT 
SYSDATE,
ROUND(SYSDATE,'YEAR')
FROM DUAL;

SELECT 
SYSDATE,
ROUND(SYSDATE,'MONTH')
FROM DUAL;