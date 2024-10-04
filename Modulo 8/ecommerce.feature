            #language:pt


            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página do produto

            Esquema do Cenário: Validação da Seleção de Opções do Produto
            Quando eu selecionar a cor <cor>
            E o tamanho <tamanho>
            E a quantidade <quantidade>
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


            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do E-commerce

            Cenário: Autenticação válida
            Quando eu digitar o usuário "barbara@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Login realizado com sucesso. Bem-vindo(a)!"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "barbara@ebac.com.br"
            E a senha "s11111"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Cenário: Validação do Preenchimento do Checkout
            Quando eu informar o nome "<nome>"
            E eu informar o sobrenome "<sobrenome>"
            E eu informar o país "<pais>"
            E eu informar o endereço "<endereco>"
            E eu informar a cidade "<cidade>"
            E eu informar o CEP "<cep>"
            E eu informar o telefone "<telefone>"
            E eu informar o email "<email>"
            Então deve existir a mensagem "<mensagem>"

            Exemplos:
            | nome    | sobrenome  | pais     | endereco     | cidade           | cep         | telefone      | email               | mensagem                                     |
            | "João"  | "Silva"    | "Brasil" | "Rua A, 123" | "São Paulo"      | "12345-678" | "11987654321" | "joao@example.com"  | "Checkout realizado com sucesso"             |
            | "Maria" | "Oliveira" | "Brasil" | "Rua B, 456" | "Rio de Janeiro" | "23456-789" | "21987654321" | "maria@example.com" | "Checkout realizado com sucesso"             |
            | ""      | "Silva"    | "Brasil" | "Rua A, 123" | "São Paulo"      | "12345-678" | "11987654321" | "joao@example.com"  | "Necessário informar o nome"                 |
            | "João"  | ""         | "Brasil" | "Rua A, 123" | "São Paulo"      | "12345-678" | "11987654321" | "joao@example.com"  | "Necessário informar o sobrenome"            |
            | ""      | ""         | ""       | ""           | " "              | ""          | ""            | ""                  | "Necessário informar os campos obrigatórios" |

