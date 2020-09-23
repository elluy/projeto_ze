# language: pt

@login
Funcionalidade: Login de usuários já cadastradps
  Como um usuario do Zé com conta previamente cadastrada
  Eu desejo logar com sucesso usando uma conta por email
  Para realizar o meu pedido

  Contexto:
    Dado que eu estou na home do site
    E que sou maior de idade
    E que acesso a área de login 

@login-sucesso
  Esquema do Cenário: Login de usuário já cadastrado no site
    E preencho um email valido <email>
    E preencho uma senha valida <senha>
    Quando aciono para logar
    Então devo ser direcionado para a home do site logado

    Exemplos:
    |email                |senha      |
    |"elluy100@gmail.com" |"Teste123" |

@login-invalido
  Esquema do Cenário: Falha de login senha inválida
    E preencho um email valido <email>
    E preencho uma senha invalida <senha>
    Quando aciono para logar
    Então a mensagem de erro de senha invalida deve ser apresentada
        
    Exemplos:
    |email                |senha        |
    |"elluy100@gmail.com" |"Teste1234"  |
