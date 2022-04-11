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
            Quando quando preencher o campo email "maria@ebac.com.br"
            E se usar um formato errado
            Então o sistema deve me retornar uma mensagem de erro "formato de email invalido"

            Cenário: Mensagem de alerta para campo vazio
            Quando não preencher um dos campo  "nome", "sobrenome", "endereço", "cidade", "cep", "telefone" e "email"
            E ao tentar finalizar o cadastro clicando no botão finalizar
            Então devo receber mensagem de alerta "favor preencher o campo vazio"

            Esquema do Cenário: Fazer cadastro no EBAC-SHOP

            Dado que eu acesse a tela ce cadastro do EBAC-SHOP
            Quando preencher os campos com asterisco <nome>,<sobrenome>, <endereco>, <cidade>, <telefone>, <cep> e <email>
            E Clicar no botão verificar
            Então deve exibir  <mensagem> de alerta cadastro concluido ou formato invalido ou se os  campos estiverem vazios.

            Exemplos:
            | Nome     | Sobrenome | Endereço  | Cidade | Cep      | Telefone  | Email                | Mensagem de alerta                          |
            | "Maria"  | Luciano   | Rua nova  | Sapé   | 21061610 | 969109932 | "maria@ebac.com.br"  | "Cadastro concluido"                        |
            | "João"   | Luciano   | Rua nova  | Sapé   | 21061610 | 969109932 | "joão@ebac."         | "Formato de email invalido"                 |
            | "Danile" | Luciano   | Rua Velha | Sapé   | 21062610 | 979109932 | "dani@ebac.com.br"   | "Cadastro concluido"                        |
            | "Nelson" | Vaz       | Rua nova  | Sapé   | 21061610 | 989109932 | "nelson@.combr"      | "Formato de email invalido"                 |
            | "Laura"  | Coelho    | *         | Sapé   | *        | 999109932 | "laura@ebac.com.br"  | "Este campo é de preenchimento obrigatório" |
            | "Carla"  | Nunes     | Rua nova  | Sapé   | 21061610 | 910109932 | "carla@ebac.com.br"  | "Cadastro concluido"                        |
            | "Marli"  | Silva     | Rua nova  | Sapé   | 21061610 | 912309932 | "mariaebacbr"        | "Formato de email invalido"                 |
            | "Jonas"  | Lucas     | Rua nova  | Sapé   | 21061610 | 989109932 | "Jo@ebac.com.br"     | "Cadastro concluido"                        |
            | "Hello"  | Cunha     | *         | Sapé   | 21061610 | 959109932 | "laura@gmail.com.br" | "Este campo é de preenchimento obrigatório" |
            | "Bianca" | Pirez     | Rua nova  | Sapé   | 21061610 | 969108832 | "bia@hotmail.com.br" | "Cadastro concluido"                        |
