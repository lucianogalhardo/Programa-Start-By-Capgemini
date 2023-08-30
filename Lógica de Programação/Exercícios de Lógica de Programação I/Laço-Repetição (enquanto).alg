algoritmo "Enquanto"
// Função :
// Autor :
// Data : 03/03/2023
// Seção de Declarações 
var
alturaMarcelo, alturaJoao, crescimentoMarcelo, crescimentoJoao : real
idade: inteiro

inicio
// Seção de Comandos 

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
         escreval("Altura João: ", alturaJoao)


fimalgoritmo
