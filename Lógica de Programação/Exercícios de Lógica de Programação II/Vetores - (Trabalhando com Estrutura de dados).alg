algoritmo "Vetores: Trabalhando com estrutura de dados"

var
numeros : vetor[1..10] de inteiro

i, j, aux : inteiro

inicio
// Se��o de Comandos 

para i de 1 ate 10 faca
     escreval("Numero: ", i)
     leia(numeros[i])
fimpara

para i de 1 ate 10 faca
     para j de 1 ate 10 faca
          se numeros[j] > numeros[i] entao
             aux <- numeros[i]
             numeros[i] <- numeros[j]
             numeros[j] <- aux
          fimse
     fimpara

fimpara
     
     
fimalgoritmo
