algoritmo "Exerc�cio Tabela Verdade"
// Fun��o :
// Autor :
// Data : 03/03/2023
// Se��o de Declara��es 
var
lado1, lado2, lado3 : real
inicio
// Se��o de Comandos 
Escreval("Lado 1: ")
leia(lado1)
Escreval("Lado 2: ")
leia(lado2)
Escreval("Lado 3: ")
leia(lado3)

se (lado1 > lado2 + lado3) ou (lado2 > lado1 + lado3) ou (lado3 > lado1+lado2) entao
   Escreval("N�o � um tri�ngulo")
senao
    se(lado1 = lado2) e (lado2 = lado3) entao
             Escreval("Equil�tero")
    senao
    se (lado1 = lado2) ou (lado2 = lado3) ou (lado1 = lado3)entao
       Escreval("Is�sceles")
       senao
            escreval("Escaleno")
    fimse
    fimse
fimse

fimalgoritmo
