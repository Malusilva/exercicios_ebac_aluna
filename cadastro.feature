            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu esteja fazendo meu cadastro no EBAC -SHOP

            Cenário: Obrigatoriedade de campo
            Quando preencher os campos com "asterisco"
            E é obrigatório preencher estes campos não deve ser deixado em branco.
            Então meu cadastro deve ser liberado

            Cenário: Email com formato errado
            Quando quando preencher o campo email
            E se usar um formato errado
            Então o sistema deve me retornar uma mensagem de erro "formato de email invalido"

            Cenário: Mensagem de alerta para campo vazio
            Quando não preencher um dos campo  "nome", "sobrenome", "endereço", "cidade", "cep", "telefone" e "email"
            E ao tentar ir para outro inputt
            Então devo receber mensagem de alerta "favor preencher o campo vazio" dentro do inputt

            Esquema do Cenário: Mensagem de alerta

            Dado que eu acesse a tela de cadastro do EBAC-SHOP
            Quando preencher os campos com asterisco <nome>,<sobrenome> e <email>
            E seguir com o cadastro
            Então deve exibir <mensagem> de alerta.

            Exemplos:
            | Nome     | Sobrenome | Email                | Mensagem                                    |
            | "Maria"  | Luciano   | "maria@ebac.com.br"  | "Usuário já cadastrado"                     |
            | "João"   | Luciano   | "joão@yahoocom"      | "Formato de email invalido"                 |
            | "Daniel" | Luciano   | "dani@gmail.com.br"  | "Usuário já cadastrado"                                          |
            | "Nelson" | Vaz       | "nelson@.combr"      | "Formato de email invalido"                 |
            | "Laura"  | Coelho    | ""                   | "Este campo é de preenchimento obrigatório" |
            | "Carla"  | ""        | "carla@yahoo.com.br" | "Este campo é de preenchimento obrigatório" |
            | "Hello"  | Cunha     | "laura@gmail.com.b"  | "Formato de email invalido"                 |