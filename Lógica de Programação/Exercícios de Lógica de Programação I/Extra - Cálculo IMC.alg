algoritmo "Extra - C�lculo IMC"
// Fun��o :
// Autor :
// Data : 03/03/2023
// Se��o de Declara��es 
var
peso, altura, imc : real

inicio
// Se��o de Comandos 
Escreval("Informe a altura: ")
leia (altura)
Escreval("Informe o peso: ")
leia (peso)

imc <- peso / altura ^2
escreval("Valor Imc: ", imc)

se imc < 19 entao
   escreval("Abaixo do peso")
senao
     se imc < 24 entao
        escreval("Peso ideal")
     senao
          escreval("Acima do peso")
     fimse
fimse

fimalgoritmo
