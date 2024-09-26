            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Cenário: Soma de 2 números
            Dado que eu acesse a calculadora
            Quando eu somar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenário: Soma de 2 números
            Quando eu digitar o <numero1>
            E o <numero2>
            Então deve exibir <soma>

            Exemplos:
            | numero1 | numero2 | soma |
            | 2       | 2       | 4    |
            | 7       | 7       | 14   |
            | 3       | 5       | 8    |
            | 10      | 20      | 30   |
            | 1       | 9       | 10   |
            | 0       | 0       | 0    |
            | -3      | 3       | 0    |
            | 4       | 6       | 10   |
            | 100     | 200     | 300  |
            | -5      | -5      | -10  |
            | 15      | 5       | 20   |
            | 8       | 12      | 20   |
            | 6       | 4       | 10   |
            | 25      | 25      | 50   |
            | -10     | 10      | 0    |
            | 50      | 50      | 100  |
            | 99      | 1       | 100  |
            | 0       | 10      | 10   |
            | -7      | -3      | -10  |

