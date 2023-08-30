algoritmo "Exercício Tabela Verdade"
// Função :
// Autor :
// Data : 03/03/2023
// Seção de Declarações 
var
lado1, lado2, lado3 : real
inicio
// Seção de Comandos 
Escreval("Lado 1: ")
leia(lado1)
Escreval("Lado 2: ")
leia(lado2)
Escreval("Lado 3: ")
leia(lado3)

se (lado1 > lado2 + lado3) ou (lado2 > lado1 + lado3) ou (lado3 > lado1+lado2) entao
   Escreval("Não é um triângulo")
senao
    se(lado1 = lado2) e (lado2 = lado3) entao
             Escreval("Equilátero")
    senao
    se (lado1 = lado2) ou (lado2 = lado3) ou (lado1 = lado3)entao
       Escreval("Isósceles")
       senao
            escreval("Escaleno")
    fimse
    fimse
fimse

fimalgoritmo
