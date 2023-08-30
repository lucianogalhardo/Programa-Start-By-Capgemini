algoritmo "Enquanto"
// Função :
// Autor :
// Data : 03/03/2023
// Seção de Declarações 
var

mediaIdade, porcentagemMenorIdade, qtdeMenorIdade : real
maisNovo, maisVelho, qtdeEntrevistados, idade, somaIdade : inteiro


inicio
// Seção de Comandos 
maisNovo <- 9999
maisVelho <- 0
qtdeEntrevistados <-0
enquanto qtdeEntrevistados < 5 faca
   Escreval("Favor, informe sua idade: ")
   leia(idade)
   
   se idade >= maisVelho entao
      maisVelho <- idade
   fimse
   
   se idade <= maisNovo entao
      maisNovo <- idade
   fimse
   se idade < 18 entao
      qtdeMenorIdade <- qtdeMenorIdade + 1
   fimse
somaIdade <- somaIdade + idade
qtdeEntrevistados <- QtdeEntrevistados + 1
fimenquanto

Escreval("Mais novo: ", maisNovo)
Escreval("Mais Velho: ", maisVelho)
porcentagemMenorIdade <- (qtdeMenorIdade / 5) * 100
Escreval("Porcentagem menor idade: ", porcentagemMenorIdade, "%")
mediaIdade <- (somaIdade / 5)
Escreval("Media de idade: ", mediaIdade)

fimalgoritmo
