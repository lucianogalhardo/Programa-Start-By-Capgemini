algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 06/03/2023
// Se��o de Declara��es 
var
nomes : vetor[1..5] de literal
pesquisa : literal
i, sucesso : inteiro
encontrado : logico

inicio
// Se��o de Comandos 

para i de 1 ate 5 faca
     escreval("Informe o nome para Cadastro: ")
     leia(nomes[i])

fimpara
limpatela

escreval("Informe o nome a pesquisar:")
leia(pesquisa)

sucesso <- 0

para i de 1 ate 5 faca
     se nomes[i] = pesquisa entao
        sucesso <- 1
     fimse
fimpara

se sucesso = 1 entao
   escreval("Cliente Localizado com sucesso!!!")
senao
   escreval("Cliente N�O LOCALIZADO!!!")
fimse

fimalgoritmo
