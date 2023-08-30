algoritmo "Extra - Cálculo IMC"
// Função :
// Autor :
// Data : 03/03/2023
// Seção de Declarações 
var
peso, altura, imc : real

inicio
// Seção de Comandos 
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
