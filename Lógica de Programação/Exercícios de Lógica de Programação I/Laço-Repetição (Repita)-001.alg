algoritmo "REPITA"
// Fun��o :
// Autor :
// Data : 03/03/2023
// Se��o de Declara��es 
var
senha, resposta : literal
i : inteiro

inicio
// Se��o de Comandos 
Escreval("Digite a senha: ")
leia(senha)
limpatela
repita
Escreval("Digite a senha para sair do sistema:")
leia(resposta)
i <- i+1
se i = 5 entao
   escreval("N�mero de tentativas = 5, favor reiniciar o sistema!!!")
   interrompa
fimse

ate resposta = senha
escreval ("Senha informada com sucesso, ACESSO LIBERADO!!!")

fimalgoritmo
