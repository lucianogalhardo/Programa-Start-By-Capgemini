algoritmo "Vetores: Trabalhando com registro entre 02 vetores"


var
num1, num2, num3  : vetor[1..5] de inteiro
i : inteiro
opcao : literal
inicio
// Seção de Comandos

para i de 1 ate 5 faca
     escreval("Numero: ", i)
     leia(num1[i])
fimpara

para i de 1 ate 5 faca
     escreval("Numero: ", i)
     leia(num2[i])
fimpara

Escreval("1- Soma")
Escreval("2- Subtrai")
leia(opcao)

se opcao = 1 entao
   para i de 1 ate 5 faca
     num3[i] <- num1[i] + num2[i]
   fimpara
senao
se opcao = 2 entao
   para i de 1 ate 5 faca
     num3[i] <- num1[i] - num2[i]
   fimpara
fimse
fimse

para i de 1 ate 5 faca
     escreval(num3[i])
fimpara



fimalgoritmo
