            #language:pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página do produto

            Esquema do Cenário: Validação da Seleção de Opções do Produto
            Quando eu selecionar a cor <cor>, o tamanho <tamanho> e a quantidade <quantidade>
            Então deve exibir uma mensagem <mensagem>

            Exemplos:
            | cor      | tamanho | quantidade | mensagem                                                                      |
            | "Orange" | "XS"    | "1"        | "Produto adicionado ao carrinho"                                              |
            |          | "XS"    | "1"        | "Necessário informar a cor"                                                   |
            | "Red"    |         | "2"        | "Necessário informar o tamanho"                                               |
            | "Blue"   | "S"     |            | "Necessário informar a quantidade"                                            |
            |          |         |            | "Necessário informar a cor, tamanho e quantidade"                             |
            | "Blue"   | "L"     | "9"        | "Produto adicionado ao carrinho"                                              |
            | "Red"    | "M"     | "10"       | "Produto adicionado ao carrinho"                                              |
            | "Blue"   | "XL"    | "11"       | "A venda não pode ser concluída. O limite máximo é de 10 produtos por venda." |

            Cenário: Limpar Valores de Opções
            Quando eu selecionar eu clicar em "Limpar"
            Então deve exibir uma mensagem "Valores redefinidos"
