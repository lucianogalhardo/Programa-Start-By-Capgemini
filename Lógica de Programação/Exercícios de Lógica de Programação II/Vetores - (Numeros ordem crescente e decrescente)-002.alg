algoritmo "Vetor registrar ordem crescente e decrescente"


var
num1, num2 : vetor[1..10] de inteiro
i, aux : inteiro
inicio
// Seção de Comandos

para i de 1 ate 10 faca
     escreval("Numero: ", i)
     leia(num1[i])
fimpara

aux <- 11
para i de 1 ate 10 faca
     num2[aux-i] <- num1[i]

fimpara

para i de 1 ate 10 faca
     escreval(num2[i])
fimpara

fimalgoritmo
