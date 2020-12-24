/*
* Lower converte strig para letras minúsculas
*/
select lower(embalagem) from tabela_de_produtos
/*
* Upper converte strig para letras maisculo
*/
select upper(embalagem) from tabela_de_produtos

/*
* Initcap Coloca a primeira letra de cada palavra maiuscula CameCase
*/
select INITCAP(embalagem) from tabela_de_produtos

/*
* concact devolve a concatenaçao de string1 com string2.E uma alternativa o operador ||
*/
select CONCAT(embalagem,' Do Farley') from tabela_de_produtos

select embalagem || ' DO FARLEY' from tabela_de_produtos

/*
* lpad sao reservados n caracteres para output.A string1 é encostada á direita, sendo o espaço á esquerda
* preenchido com string2. Em caso de omissao do string2 o espacço será preenchido com espaço em branco
* PREENCHER OS ESPAÇOS EM BRANCO PARA TER O MESMO TAMANHO
*/
select LPAD(embalagem,50,'*'),LPAD(embalagem,50,'*-')   from tabela_de_produtos

/*
* Rpad sao reservados n caracteres para output.A string1 é encostada á direita, sendo o espaço á DIREITA
* preenchido com string2. Em caso de omissao do string2 o espacço será preenchido com espaço em branco
* PREENCHER OS ESPAÇOS EM BRANCO PARA TER O MESMO TAMANHO
*/
select RPAD(embalagem,50,'*'),LPAD(embalagem,50,'*-')   from tabela_de_produtos

/*
* SUBSTRING(VALOR,POS,N)
* ESSA FUNÇÃO PRESSUPOE QUE OS CARAXTERES NUMA CADEIA SÃO NUMERADOS DA ESQUERDA PARA DIREITA,COMECANDO EM 1
*DEVOLVE A SUBSTRING DE 'STRING1' QUE COMECA NA POSICAO 'POS' E TEM COMPRIMENTO ATE N. SE O PARAMENTRO N 
* FOR OMITIDO, DEVOLVE TODOS OS CARACTERES DESDE A POSICÇAO 'POS' ATE O FIM
*/
select SUBSTR(embalagem,1,10) from tabela_de_produtos

/*
* INSTR(STRING1,STRING2)
* DEVOLVE A POSICAO DA PRIMEIRA OCORRENCIA DE STRING2 DENTRO SNTRING1
*/
select INSTR(embalagem,'G') from tabela_de_produtos
/*
* INSTR(STRING1,STRING2,pos,n)
* DEVOLVE A POSICAO DA PRIMEIRA OCORRENCIA DE STRING2 DENTRO SNTRING1 a partir da posicao pos
*/
select INSTR(embalagem,'G',1,5) from tabela_de_produtos

/*
*ltrim espacos a esquerda
*/
select ltrim(embalagem) from tabela_de_produtos
/*
*RTRIm
*Espaços a direita
*/
select rtrim(embalagem) from tabela_de_produtos

/*
*LENGth devolve o tamanho da string
*/
select LENGth(embalagem) from tabela_de_produtos
/*
translate(string1,c1,c2)
Substitui um caracter por outro.Converte todas as ocorrencias do caracter c1 de string1 para c2.Podem
ser colocados em varios caracteres.Se o c2 for omitido, c1 é convertido para espaço em branco.
*/
select translate(embalagem,'G','A') from tabela_de_produtos
/*
* Replace(string1,string2,string3)
* Trabalhando sobre string1,converte todas as ocorrencias de string2 para string3.Se string3 for omitida,string2 e convertida
* em espaço em branco
*/
select replace(embalagem,'Garrafa','Farley') from tabela_de_produtos



/*****************************************************************
*****************************************************************
*******EXEMPLOS**************************************************
****************************************************************
*/

-- UPPER
SELECT 
    NOME,
    UPPER(NOME)
FROM TABELA_DE_CLIENTES;
-- LOWER
SELECT 
    NOME,
    LOWER(NOME)
FROM TABELA_DE_CLIENTES;
-- INITCAP
SELECT
    NOME_DO_PRODUTO,
    INITCAP(NOME_DO_PRODUTO)
FROM TABELA_DE_PRODUTOS
-- CONCAT
SELECT 
    ENDERECO_1,
    BAIRRO,
    CONCAT(ENDERECO_1,BAIRRO) AS ENDERECO_COMPLETO
FROM  TABELA_DE_CLIENTES;

-- USANDO O ||
SELECT 
    NOME,
    'Endereco: ' || ENDERECO_1 || ' ' || BAIRRO || ' ' || CIDADE || ' ' || ' ' || ESTADO || ', CEP: ' || CEP AS ENDERECO_CPMPLETO
FROM  TABELA_DE_CLIENTES;
--LPAD
SELECT
    NOME_DO_PRODUTO,
    LPAD(NOME_DO_PRODUTO,60,'*')
FROM TABELA_DE_PRODUTOS
--RPAD
SELECT
    NOME_DO_PRODUTO,
    RPAD(NOME_DO_PRODUTO,60,'*')
FROM TABELA_DE_PRODUTOS;
-- substring
SELECT
    NOME_DO_PRODUTO,
    SUBSTR(NOME_DO_PRODUTO,3,5)
FROM TABELA_DE_PRODUTOS;
-- INSTR
SELECT
    NOME_DO_PRODUTO,
    INSTR(NOME_DO_PRODUTO,'-')
FROM TABELA_DE_PRODUTOS;
--LTRIM
SELECT
    LTRIM('    AAA')
FROM DUAL;
-- rtim
SELECT
    RTRIM('AAA     ')
FROM DUAL;
-- replace
SELECT
    NOME_DO_PRODUTO,
    replace(replace(NOME_DO_PRODUTO,'Litro','L'),'Ls','L')
FROM TABELA_DE_PRODUTOS;