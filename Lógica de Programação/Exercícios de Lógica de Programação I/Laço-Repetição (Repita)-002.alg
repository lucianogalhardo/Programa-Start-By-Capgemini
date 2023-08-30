algoritmo "MENU"
// Função :
// Autor :
// Data : 04/03/2023
// Seção de Declarações
var
opcaoMenu : literal
totalConta : real

inicio
// Seção de Comandos

repita
   escreval("1 - Troca de óleo")
   escreval("2 - Balanceamento")
   escreval("3 - Sair")
   leia(opcaoMenu)
   se opcaoMenu = "1" entao
      totalconta <- totalconta + 100
   senao
   se opcaoMenu = "2" entao
      totalConta <- totalConta + 70
   fimse
   fimse
limpatela
ate opcaoMenu = "3"
escreval("Total da conta: R$", totalconta)

fimalgoritmo
