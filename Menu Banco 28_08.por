programa {
  funcao inicio() {
    inteiro menu 
    cadeia espera , extrato = "", senha = "luca", senha2
    real saldo = 0 , saque, deposito, investimento, rendimento, meses

    escreva("Digite sua senha: ")
    leia(senha2)

    enquanto(senha2 != senha){
      escreva("Senha incorreta! Tente novamente! ")
      leia(senha2)
    }
    escreva("|--------MENU--------|\n")
    escreva("| 1- SALDO           |\n")
    escreva("| 2- SAQUE           |\n")
    escreva("| 3- DEPÓSITO        |\n")
    escreva("| 4- EXTRATO         |\n")
    escreva("| 5- INVESTIMENTO    |\n")
    escreva("| 0- SAIR            |\n")
    escreva("|--------------------|\n")
    escreva("Opção-> ")
    leia(menu)

    enquanto(menu!=0){
      //CASO 1
      escolha(menu){
      caso 1:
        escreva("SALDO: R$",saldo," (Aperte enter para continuar)\n")
        leia(espera)
      pare
      
      //CASO 2
      caso 2:
        escreva("Digite sua senha: ")
        leia(senha2)
        se(senha2 == senha){
        
          escreva("Digite quando deseja sacar: ")
          leia(saque)

          enquanto(saque<=0){
            escreva("SAQUE FALHOU! Digite outro valor: ")
            leia(saque)
          }

          se(saque>saldo){
            escreva("SALDO INSUFICIENTE - R$",saldo," (Aperte enter para continuar\n)")
           leia(espera)
          }
        
         senao{
         saldo = saldo - saque
          extrato = extrato + "SAQUE --------- R$ " + saque + "\n"
         escreva("SAQUE CONCLUÍDO! NOVO SALDO: R$",saldo," (Aperte enter para continuar)\n")
         leia(espera)
          }
        }

        senao{
          escreva("Senha inválida!\n")
        }
      pare
      
      //CASO 3
      caso 3:
        escreva("Digite sua senha: ")
        leia(senha2)

        se(senha2 == senha){
        escreva("Digite quando deseja depositar: ")
        leia(deposito)

        enquanto(deposito<=0){
          escreva("DEPOSITO FALHOU! Digite outro valor: \n")
          leia(deposito)
        }
        
        saldo = saldo + deposito
        extrato = extrato + "DEPÓSITO --------- R$ " + deposito + "\n"
        escreva("DEPÓSITO CONCLUÍDO! NOVO SALDO: R$",saldo," (Aperte enter para continuar)\n")
        leia(espera)
      }  

      senao{
        escreva("Senha inválida!\n")
        leia(espera)
      }
      pare

      //CASO 4
      caso 4:
        escreva("Digite sua senha: ")
        leia(senha2)
        
        se(senha2 == senha){
          escreva("Extrato\n")
          escreva(extrato)
          escreva("\nSaldo: R$", saldo,"\n","(Aperte enter para continuar)\n")
          leia(espera)
        }

        senao{
          escreva("Senha inválida!")
          leia(espera)
        }

          //CASO 5
          caso 5: 
          escreva("Digite sua senha: ")
          leia(senha2)

          se(senha2==senha){
           escreva("Digite o valor que deseja investir: ")
           leia(investimento)
           se(investimento>saldo){
            escreva("Saldo insufisciente!")
            leia(espera)
           }
           
           senao{
            escreva("Digite a quantidade de mesese que deseja investir: ")
            leia(meses)
            saldo = saldo - investimento
            para(inteiro contador = 0; contador<meses; contador++){
              rendimento = investimento * 1.07
              investimento = rendimento
            }
            saldo = saldo + investimento
            escreva("O rendimento foi de R$", investimento, "Parabéns! \n")
            leia(espera)
           }
          }

          senao{
            escreva("Senha inválida!")
            leia(espera)
          }
        }
        
      limpa()
      escreva("|--------MENU--------|\n")
      escreva("| 1- SALDO           |\n")
      escreva("| 2- SAQUE           |\n")
      escreva("| 3- DEPÓSITO        |\n")
      escreva("| 4- EXTRATO         |\n")
      escreva("| 5 - INVESTIMENTO   |\n")
      escreva("| 0- SAIR            |\n")
      escreva("|--------------------|\n")
      escreva("Opção-> ")
      leia(menu)
    }
  }
} 

