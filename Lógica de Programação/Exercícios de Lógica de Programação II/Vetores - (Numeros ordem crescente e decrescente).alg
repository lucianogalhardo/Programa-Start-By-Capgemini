algoritmo "Vetor registrar ordem crescente e decrescente"


var
crescente : vetor[1..10] de inteiro
decrescente : vetor[1..10] de inteiro
i, cont : inteiro
inicio
// Seção de Comandos 
i <- 10
cont <- 1

para i de 10 ate 100 passo 10 faca
     crescente[cont] <- i
     escreval(crescente[cont])
     cont <- cont + 1
fimpara

cont <- 1
para i de 100 ate 10 passo -10 faca
     decrescente[cont] <- i
     escreval(decrescente[cont])
     cont <- cont + 1
fimpara

fimalgoritmo
