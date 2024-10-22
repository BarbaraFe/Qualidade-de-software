            #language:pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Cenário: Validação do Preenchimento do Checkout
            Quando eu informar o nome "<nome>", o sobrenome "<sobrenome>", o país "<pais>", o endereço "<endereco>", a cidade "<cidade>", o CEP "<cep>", o telefone "<telefone>" e o email "<email>"
            Então deve existir a mensagem "<mensagem>"

            Exemplos:
            | nome    | sobrenome  | pais     | endereco     | cidade           | cep         | telefone      | email               | mensagem                                     |
            | "João"  | "Silva"    | "Brasil" | "Rua A, 123" | "São Paulo"      | "12345-678" | "11987654321" | "joao@example.com"  | "Checkout realizado com sucesso"             |
            | "Maria" | "Oliveira" | "Brasil" | "Rua B, 456" | "Rio de Janeiro" | "23456-789" | "21987654321" | "maria@example.com" | "Checkout realizado com sucesso"             |
            | ""      | "Silva"    | "Brasil" | "Rua A, 123" | "São Paulo"      | "12345-678" | "11987654321" | "joao@example.com"  | "Necessário informar o nome"                 |
            | "João"  | ""         | "Brasil" | "Rua A, 123" | "São Paulo"      | "12345-678" | "11987654321" | "joao@example.com"  | "Necessário informar o sobrenome"            |
            | ""      | ""         | ""       | ""           | " "              | ""          | ""            | ""                  | "Necessário informar os campos obrigatórios" |

