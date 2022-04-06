            #language: pt

            Funcionalidade: Escolher produtos com sucesso
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a área de configuração de produtos da EBAC-SHOP

            Cenário: Escolha de produtos
            Quando escolher cor, tamanho
            E quantidade
            Então devo poder inserir essas escolhas no carrinho.

            Cenário: Escolher quantidade de produtos
            Quando escolher 15 produtos, adicioná-los ao carrinho
            E tentar finalizar a compra
            Então devo receber feedback de quantidade de itens excedida.

            Cenário: Limpar características escolhidas para o produto
            Quando marcar suas características (Cor e Tamanho)
            E resolva mudar de opinião
            Então o botão limpar deve voltar ao estado original.


            Esquema do Cenário: Escolher produtos com sucesso
            Quando eu escolher <produto>, <cor>, <tamanho> e <quantidade>
            E resolva <limpar algumas escolhas>
            Então devo poder  <inserir ao carrinho>,  <escolher novamente> ou receber feedback de <quantidade excedida>.

            Exemplos:
            | Produto              | Cor        | Tamanho | Quantidade | Limpar algumas escolhas | Inserir ao carrinho, Escolher novamente ou Quantidade excedida |
            | "Autumn Pullie"      | "Azul"     | "GG"    | "2"        | "Limpar"                | "Escolher novamente"                                           |
            | "Sol Active Short"   | "Azul"     | "P"     | "3"        | "Não Limpar"            | "Inserido ao carrinho com sucesso"                             |
            | "Lono Yoga Short"    | "Vermelho" | "M"     | "1"        | "Limpar"                | "Escolher novamente"                                           |
            | "Celeste Sports Bra" | "Preto"    | "GG"    | "4"        | "Não limpar"            | "Inserido ao carrinho com sucesso"                             |
            | "Abominable Hoodie"  | "Laranja"  | "M"     | "15"       | "Não limpar"            | "Quantidade excedida"                                          |


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
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir <mensagem> de sucesso

            Exemplos:
            | Usuario              | Senha        | mensagem                     |
            | "maria@ebac.com.br"  | "123@EBAC"   | "Olá Maria"                  |
            | "joão@ebac.com.b"    | "123@EBAC"   | "Olá João"                   |
            | "dani@ebac.com.br"   | "123@EBAC"   | "Olá Daniel"                 |
            | "nelson@ebac.com.br" | "123@EBAC"   | "Olá Nelson"                 |
            | "laura@ebac.com.br"  | "123@EBAC"   | "Olá Laura"                  |
            | "xxxx@ebac.com.br"   | "123@EBAC"   | "Usuário ou senha inválidos" |
            | "maria@ebac.com.b"   | "rsrsrsrsrs" | "Usuário ou senha inválidos" |
            | "joão@ebac.com.br"   | "s2s2s2s2s2" | "Usuário ou senha inválidos" |
            | "laura@ebk.com.br"   | "123@EBAC"   | "Usuário ou senha inválidos" |
            | "nelso@ebac.com.br"  | "rsrsrsrsr"  | "Usuário ou senha inválidos" |


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
            E ao tentar finalizar o cadastro
            Então devo receber mensagem de alerta "favor preencher o campo vazio"

            Esquema do Cenário: Fazer cadastro no EBAC-SHOP

            Quando preencher os campos com <asterisco>
            E se o <email> estiver no formato incorreto.
            Então deve exibir  <mensagem> de alerta e se os  campos estiverem vazios.

            Exemplos:
            | Campos com asterisco | Email               | Mensagem de alerta                          |
            | "Nome*"              | "maria@ebac.com.br" | "-"                                         |
            | "Sobrenome*"         | "joão@ebac.br"      | "Formato de email invalido"                 |
            | "Endereço*"          | "dani@ebac.com.br"  | "-"                                         |
            | "País*"              | "nelson@ebac.combr" | "Formato de email invalido"                 |
            | "*"                  | "laura@ebac.com.br" | "Este campo é de preenchimento obrigatório" |
            | "Cep*"               | "carla@ebac.com.br" | "-"                                         |
            | "Telefone*"          | "mariaebacbr"       | "Formato de email invalido"                 |
            | "Nome da empresa*"   | "joão@ebac.com.br"  | "-"                                         |
            | "*"                  | "laura@ebk.com.br"  | "Este campo é de preenchimento obrigatório" |
            | "País"               | "nelso@ebac.com.br" | "-"                                         |






