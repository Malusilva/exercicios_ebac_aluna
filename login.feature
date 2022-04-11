            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a tela login

            Cenário: Autenticar usuário
            Dado que eu esteja na tela login do EBAC-SHOP
            Quando digitar usuário "maria@ebac.com.br"
            E senha "123@EBAC" válidos
            Então devo ser direcionado a tela checkout e visualizar mensagem de boas vindas "Olá Maria"

            Cenário: Usuário ou senha inválidos
            Dado que eu esteja na tela login do EBAC-SHOP
            Quando digitar usuário "xxx@ebac.com.br"
            E ou senha "123@EBAC" inválidos
            Então devo receber mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Dado que eu acesse a plataforma de login do EBAC-SHOP
            Quando eu digitar o <usuario> e <senha>
            E clicar no botão entrar
            Então deve exibir <mensagem> de Olá usuário ou usuário e senha invalido

            Exemplos:
            | Usuario              | Senha       | mensagem                     |
            | "maria@ebac.com.br"  | "123@EBAC"  | "Olá Maria"                  |
            | "joão@gmail.com.b"   | "123@EBAC"  | "Olá João"                   |
            | "dani@yahoo.com.br"  | "123@EBAC"  | "Olá Daniel"                 |
            | "nelson@hotmail.com" | "123@EBAC"  | "Olá Nelson"                 |
            | "laura@ebac.com.br"  | "123@EBAC"  | "Olá Laura"                  |
            | "maria@ebacom.br"    | "123@EBAC"  | "Usuário ou senha inválidos" |
            | "joãoebacbr"         | "s2s2s2s2s" | "Usuário ou senha inválidos" |
            | "lauracom.br"        | "123@EBAC"  | "Usuário ou senha inválidos" |
            | "nelso@ebac..br"     | "rsrsrsrsr" | "Usuário ou senha inválidos" |
