algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 03/03/2023
// Se��o de Declara��es 
var
nota1, nota2, nota3 : inteiro
media : real
inicio
// Se��o de Comandos 
Escreval("Nota 1: ")
leia(nota1)
Escreval("Nota 2: ")
leia(nota2)
Escreval("Nota 3: ")
leia(nota3)

media <- (nota1 + nota2 + nota3)/3

ESCREVAL("Media Geral: ", MEDIA)

se media >= 7 entao
   escreval("Parab�ns, Vc foi Aprovado!!!")
senao
   se media < 5 entao
      escreval("Aluno reprovado")
   senao
      escreval("ALUNO EM RECUPERA��O")
   FIMSE
FIMSE
fimalgoritmo
