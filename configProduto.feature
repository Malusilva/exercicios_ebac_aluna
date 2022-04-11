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
            Quando eu escolher um produto e opatar pela <cor>, <tamanho> e <quantidade>
            E resolva <limpar algumas escolhas> clicando no botão limpar,
            Então devo poder <inserir ao carrinho> a escolha ou <escolher novamente> outro produto ou receber feedback de <quantidade excedida> ou <finalizar compra>.

            Exemplos:
            | Cor        | Tamanho | Quantidade | Limpar algumas escolhas | Inserir ao carrinho, Escolher novamente, Compra finalizada ou Quantidade excedida |
            | "Azul"     | "GG"    | "2"        | "Limpar"                | "Escolher novamente"                                                              |
            | "Azul"     | "P"     | "3"        | "Não Limpar"            | "Inserido ao carrinho com sucesso"                                                |
            | "Vermelho" | "M"     | "1"        | "Limpar"                | "Escolher novamente"                                                              |
            | "Preto"    | "GG"    | "4"        | "Não limpar"            | "Inserido ao carrinho com sucesso"                                                |
            | "Laranja"  | "M"     | "15"       | "Não limpar"            | "Quantidade excedida"                                                             |
            | "Branco"   | "G"     | "10"       | "Não limpar"            | "finalizar compra"                                                                |
            | "Verde"    | "M"     | "13"       | "Não limpar"            | "finalizar compra"                                                                |
            | "Rosa"     | "P"     | "9"        | "Não limpar"            | "finalizar compra"                                                                |
            | "Preto"    | "PP"    | "20"       | "Não limpar"            | "Quantidade excedida"                                                             |