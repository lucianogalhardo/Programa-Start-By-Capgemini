algoritmo "Enquanto"
// Fun��o :
// Autor :
// Data : 03/03/2023
// Se��o de Declara��es 
var
alturaMarcelo, alturaJoao, crescimentoMarcelo, crescimentoJoao : real
idade: inteiro

inicio
// Se��o de Comandos 

alturaMarcelo <- 1.20
alturaJoao <- 1.05
crescimentoMarcelo <- 0.05
crescimentoJoao <- 0.07
idade <- 8

enquanto alturaMarcelo >= alturaJoao faca
         alturaMarcelo <- alturaMarcelo + crescimentoMarcelo
         alturaJoao <- alturaJoao + crescimentoJoao
         idade <- idade + 1
fimenquanto

         Escreval("idade: ", idade)
         escreval("Altura Marcelo: ", alturamarcelo)
         escreval("Altura Jo�o: ", alturaJoao)


fimalgoritmo
