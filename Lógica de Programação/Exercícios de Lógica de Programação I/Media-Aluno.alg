algoritmo "C�lculo Media de Aluno"
// Fun��o :
// Autor :
// Data : 03/03/2023
// Se��o de Declara��es 
var

nota1, nota2, nota3 : real
somaNota, media : real
inicio
// Se��o de Comandos 
Escreval("Informe a 1� nota: ")
leia(nota1)
Escreval("Informe a 2� nota: ")
leia(nota2)
Escreval("Informe a 3� nota: ")
leia(nota3)

somaNota <- nota1 + nota2 + nota3
media <- somaNota / 3

Escreval("M�dia do Aluno: ", media)
se media >= 7 entao
   Escreval("ALUNO APROVADO")
senao
     escreval("ALUNO EM RECUPERA��O")
FIMSE
fimalgoritmo
