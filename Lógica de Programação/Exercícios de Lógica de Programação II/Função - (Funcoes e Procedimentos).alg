algoritmo "Procedimentos e Funções"

var
   vetorClientes : vetor[1..5] de literal
   opcaoMenu : literal
   opcaoSubMenu : literal


   //Procedimento Mostrar Menu
   procedimento mostrarMenu()
   inicio
      escreval("1- Cadastrar")
      escreval("2- Pesquisar")
      escreval("3- Excluir")
      escreval("4- Sair")
      leia(opcaoMenu)
   fimprocedimento
   
   //Procedimento Cadastrar Cliente
   procedimento cadastrar()
   var
      i : inteiro
      
   inicio
      para i de 1 ate 5 faca
           se vetorClientes[i] = "" entao
                Escreval("Informe o nome do Cliente:")
                leia(vetorClientes[i])
                escreval("Cliente Cadastrado com Sucesso !!!")
                escreval("")
           fimse
      fimpara
   fimprocedimento


   //Procedimento Pesquisar Cliente
   procedimento pesquisar()
   var
      i : inteiro
      nomePesquisar : literal
      idSucesso : inteiro
      
   inicio

         Escreval("Informe o Nome do Cliente a pesquisar:")
         leia(nomePesquisar)
         idSucesso <- -1
         para i de 1 ate 5 faca
           se vetorClientes[i] = nomePesquisar entao
                idSucesso <- i
                interrompa
           fimse
         fimpara
         se idSucesso = -1 entao
            Escreval("Cliente não encontrado")
         senao
              Escreval("Cliente encontrado na posição: ", idSucesso )
         fimse
   fimprocedimento
   

   //Procedimento Excluir Cliente
   procedimento excluir()
   var
      idExcluir : inteiro
      
   inicio
         Escreval("Informe o índice a excluir:")
         leia(idExcluir)
         
         se (idExcluir > 5) ou (idExcluir < 1) entao
            escreval("Índice Inválido, Favor tentar novamente !!!")
            escreval("Escolha a opção:")
         senao
            vetorClientes[idExcluir] <- ""
         fimse

   fimprocedimento


inicio
   repita
      mostrarMenu()
      escolha opcaoMenu
      caso "1"
           cadastrar()
      caso "2"
           pesquisar()
      caso "3"
           excluir()
      outrocaso
         escreval("opção inválida")
      fimescolha
   ate opcaoMenu = "4"



fimalgoritmo
