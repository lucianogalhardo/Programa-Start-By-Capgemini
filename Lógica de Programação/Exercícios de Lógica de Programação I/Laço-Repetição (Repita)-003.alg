algoritmo "Menu"


var
opcaoMenu : literal
totalConta : real

inicio

repita
   Escreval("1 - Troca de �leo")
   Escreval("2 - Balanceamento")
   Escreval("3 - Sair")
   leia(opcaoMenu)
   se opcaoMenu = "1" entao
      totalConta <- totalConta + 100
   senao
   se opcaoMenu = "2" entao
      totalConta <- totalConta + 70
   fimse
   fimse
limpatela
ate opcaoMenu = "3"
escreval("Total da conta: ", totalConta)

fimalgoritmo
