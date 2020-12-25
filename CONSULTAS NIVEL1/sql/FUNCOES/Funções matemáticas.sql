/*
Round(valor,n)
* Arredonda o valor.Se n não for omitido arrendonda para as unidades.Se n for positivo arrendoda na posicao de n
* á direita da virgula. Se n for negativo arredonda na posicao n á esquerda da virgula.
*/


SELECT
    ROUND(preco_de_lista,1)
FROM tabela_de_produtos

/*
* TRUNC(VALOR,N)
* TRUNCA O VALOR. Se N for omitido trunca as unidades. Se n for positivo trunca na posicao n a direita da virgula. Se N for
* negativo trunca na posição n á esquerda da virgula,colocando os algoritmos á direita de n e ate virgula com zero
exemplo 4.888888 vira 4.0
*/

SELECT
    trunc(preco_de_lista,1)
FROM tabela_de_produtos

/*
* ceil(valor)
* Determina o menor inteiro maior ou igual que o valor introduzido com argumento
* Exemplo 4.6767   cel joga para 5
* ARREDONDA PARA CIMA
*/
SELECT
    preco_de_lista,
    CEIL(preco_de_lista)
FROM tabela_de_produtos


/*
* FLOOR(valor)
* Determina o inteiro menor  ou igual que o valor introduzido como parametro
* Exemplo 4.6767   cel joga para 4
* ARREDONDA PARA baixo
*/

SELECT
    preco_de_lista,
    floor(preco_de_lista)
FROM tabela_de_produtos

/*
* Power(valor,n)
* Eleva a potencia de n ao valor pode ser negativo
*/
SELECT
    preco_de_lista,
    power(preco_de_lista,2)
FROM tabela_de_produtos

/*
* Exp(n)
* Devolve o valor 'e' elevado a n e= 2.343434343
*/
SELECT 
exp(1)
FROM dual
/*
* Sqrt(valor)
* Devolve a raiz quadrada
*/
SELECT 
sqrt(49)
FROM dual
/*
* Sign(valor)
* Devolve -1 se for negativo,zero se for nulo,1 se for postivo
*/
SELECT
    preco_de_lista,
    sign(preco_de_lista)
FROM tabela_de_produtos

/*
* Abs(Valor)
* devolve o valor absoluto de valor tipo se for negativo fica positivo
*/

/*
* MOD(VALOR1,VALOR2)
* DEVOLVE O RESTO DA DIVISAO
*/


-- EXEMPLO

SELECT
    round(3.4)
FROM dual

SELECT
    round(3.6)
FROM dual


SELECT
    trunc(3.4)
FROM dual

SELECT
    trunc(3.6)
FROM dual

SELECT
    ceil(3.4)
FROM dual

SELECT
    ceil(3.6)
FROM dual

SELECT
    floor(3.4)
FROM dual

SELECT
    floor(3.6)
FROM dual

select power(10,2) from dual

