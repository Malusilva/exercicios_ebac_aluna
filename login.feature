            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a tela login do EBAC-SHOP

            Cenário: Autenticar usuário
            Quando digitar usuário "maria@ebac.com.br"
            E senha "123@EBAC" válidos
            Então devo ser direcionado a tela checkout e visualizar mensagem de boas vindas "Olá Maria"

            Cenário: Usuário ou senha inválidos
            Quando digitar usuário "xxx@ebac.com.br"
            E ou senha "123@EBAC" inválidos
            Então devo receber mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Receber mensagem de alerta se usar credenciais não validadas
            Quando eu digitar o <usuario> e <senha>
            E clicar no botão entrar
            Então deve exibir <mensagem>

            Exemplos:
            | Usuario             | Senha      | mensagem                         |
            | "maria@ebac.com.br" | "135"      | "Verifique formato da senha"     |
            | "joão@gmail.com"    | ""         | "Preencher o campo Senha"        |
            | "lauracom.br"       | "123@EBAC" | "verifique formato do E-mail"    |
            | ""                  | "@Ml123"   | "Preencher o campo E-mail"       |
            | ""                  | ""         | "Preencher campo E-mail e senha" |