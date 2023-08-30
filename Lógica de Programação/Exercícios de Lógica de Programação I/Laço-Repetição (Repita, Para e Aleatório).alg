algoritmo "semnome"

var
aleatorioMaximo, aleatorioMinimo, incremento, i : inteiro

inicio
// Seção de Comandos 

repita
aleatorio 1, 100
    leia(aleatorioMaximo)
    leia(aleatorioMinimo)
aleatorio off
ate aleatorioMaximo >= aleatorioMinimo
limpatela

aleatorio 1, 5
leia(incremento)
aleatorio off
//limpatela

para i de aleatorioMinimo ate aleatorioMaximo passo incremento faca
     escreval(i)
fimpara

fimalgoritmo
