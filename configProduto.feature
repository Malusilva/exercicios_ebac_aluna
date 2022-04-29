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

            Cenário: Exceder a quantidade de produtos
            Quando escolher 15 produtos, adicioná-los ao carrinho
            E tentar finalizar a compra
            Então devo receber feedback de quantidade de itens excedida.

            Cenário: Escolher quantidade de produtos
            Quando escolher 10 produtos, adicioná-los ao carrinho
            E tentar finalizar a compra
            Então devo receber feedback de compra finalizada.

            Cenário: Limpar características escolhidas para o produto
            Quando o usuário marcar as características do produto (Cor e Tamanho)
            E resolve mudar de opinião
            Então ele deve poder clicar no botão limpar e voltar a escolher novas características.


            Esquema do Cenário: Escolher produtos com sucesso
            Dado que eu acesse a pagina do EBAC-SHOP
            Quando eu escolher um produto e opatar pela <cor> e <tamanho>
            Então devo poder clicar no botão comprar e receber <mensagem> 

            Exemplos:
            | Cor      | Tamanho | Mensagem                           |
            | "Azul"   | ""      | "Escolher tamanho"                 |
            | "Azul"   | "P"     | "Inserido ao carrinho com sucesso" |
            | ""       | "M"     | "Escolher cor"                     |
            | "Preto"  | "GG"    | "Inserido ao carrinho com sucesso" |
            | ""       | ""      | "Escolher cor e tamanho"           |
            | "Branco" | "G"     | "finalizar compra"                 |