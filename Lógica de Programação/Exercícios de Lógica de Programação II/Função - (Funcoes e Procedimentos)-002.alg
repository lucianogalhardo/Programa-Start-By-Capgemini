algoritmo "Procedimentos e Fun��es"


var

   gabarito : vetor[1..10] de literal
   opcaoMenu : literal
   notaFinal :inteiro

procedimento mostrarMenu()
inicio
   Escreval("1- Cadastrar Gabarito")
   Escreval("2- Cadastrar Prova")
   Escreval("3- Sair")
   leia(opcaoMenu)

fimprocedimento


// PROCEDIMENTO CADASTRAR GABARITO
procedimento cadastrarGabarito()

var
   i : inteiro

inicio

   para i de 1 ate 10 faca
      Escreval("Informe a resposta da quest�o: ", i)
      leia(gabarito[i])

   fimpara

fimprocedimento


// FUN��O CADASTRAR PROVA
funcao cadastrarProva() : inteiro

var
   i, nota : inteiro
   resposta : literal

inicio
   nota <- 0
   para i de 1 ate 10 faca
      Escreval("Informe a resposta da quest�o: ", i)
      leia(resposta)
      se resposta = gabarito[i] entao
         nota <- nota + 1
      fimse
      retorne nota
   fimpara
fimfuncao


// FUN��O VERIFICA SITUA��O NOTA
funcao verificarSistuacao(nota : inteiro) : literal

inicio
   se nota >= 7 entao
      retorne "APROVADO"
   senao
      retorne "REPROVADO"
   fimse
   fimfuncao



inicio

   repita
      mostrarMenu()
      escolha opcaoMenu
         caso "1"
            cadastrarGabarito()
         caso "2"
            notaFinal <- cadastrarProva()
            escreval(verificarSistuacao(notaFinal))
         outrocaso
            Escreval("Op��o Inv�lida!!!")
      fimescolha
   ate opcaoMenu = "3"

fimalgoritmo
