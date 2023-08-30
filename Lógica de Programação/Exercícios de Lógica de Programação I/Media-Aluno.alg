algoritmo "Cálculo Media de Aluno"
// Função :
// Autor :
// Data : 03/03/2023
// Seção de Declarações 
var

nota1, nota2, nota3 : real
somaNota, media : real
inicio
// Seção de Comandos 
Escreval("Informe a 1ª nota: ")
leia(nota1)
Escreval("Informe a 2ª nota: ")
leia(nota2)
Escreval("Informe a 3ª nota: ")
leia(nota3)

somaNota <- nota1 + nota2 + nota3
media <- somaNota / 3

Escreval("Média do Aluno: ", media)
se media >= 7 entao
   Escreval("ALUNO APROVADO")
senao
     escreval("ALUNO EM RECUPERAÇÃO")
FIMSE
fimalgoritmo
