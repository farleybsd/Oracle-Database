/*
*  To_Date(string,nascara_da_data)
* A funcao to_date() converte do formato cadeia de caracter para data,seguindo a mascara escolhida pelo ultilizador.
*/

SELECT
   TO_DATE('05-01-1992','DD-MM-YYYY')
FROM DUAL;

SELECT
   TO_DATE('1992-05-01 06:12:45','yyyy-mm-dd hh24:mi:ss')
FROM DUAL;

/*
* To_char(data,mascara_data,[nls_date_formart])
* A função To_char(Data) converte do formato data para cadeia de caracteres,seguingo a mascara escolhida pelo ultilizador.
*/

SELECT
    data_de_nascimento,
    TO_CHAR(data_de_nascimento,'day, dd "de" Month "de" YYYY')
FROM tabela_de_clientes

/*
* EXTRACT(YEAR|MONTH|WEEK|DAY|HOUR|MINUTE|TIMEZONE FROM DATE|TIMESTAMP)
* A FUNCAO EXTRACT PERMITE EXTRAIR OS COMPONENTS DE UMA DATA
OBS:
    * De um tipo Date apenas podemos extrair o ano,mes e o dia
    * So podemos extrair timezone_hour e timezoneminute de um tipo timestamp que possua timezone
*/

/*
* TO_NUMBER(STRING)
* A FUNCAO TO_NUMBER CONVERTE UMA CADEIA DE CARACTER EM NUMERO
*/
SELECT 
    TO_NUMBER('150')
FROM DUAL;

/*
* NVL(V1,V2)
* SE O VALOR DE V1 FOR NULO, DEVOLVE V2.
* IGUAL O ISNULL DO SQL SERVER
*/

/*
* GREATEST(V1,V2,V3)
* DEVOLVE O MAIOR DOS VALORES V1,V2,V3.A FUNÇÃO PODE RECEBER MAIS DO 3 ARGUMENTOS
*/
SELECT
    GREATEST(1,2,3)
FROM DUAL;

-- EXEMPLO

SELECT
    TO_DATE('12/11/2019','DD/MM/YYYY')
FROM DUAL;

SELECT
    TO_CHAR(SYSDATE,'MM/DD/YYYY HH12:MM:SS AM')
FROM DUAL;

SELECT
    EXTRACT(MONTH FROM TO_DATE('12/11/2019','DD/MM/YYYY'))
FROM DUAL;

SELECT
    EXTRACT(MONTH FROM TO_DATE(sysdate,'DD/MM/YYYY'))
FROM DUAL;

SELECT
    TO_NUMBER(10) + 100
FROM DUAL;

SELECT
    TO_CHAR(10,'00000')
FROM DUAL;

SELECT NVL(NULL,10) FROM DUAL;























