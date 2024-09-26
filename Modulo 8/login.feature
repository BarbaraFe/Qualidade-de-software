            #language: pt

            Funcionalidade: Tela de login
            Como aluno do Portal EBAC quero me autenticar
            Para visualizar minhas notas

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "barbara@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá Bárbara"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "aaaaba@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "barbara@ebac.com.br"
            E a senha "s11111"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario               | senha       | mensagem      |
            | "barbara@ebac.com.br" | "senha@123" | "Olá Bárbara" |
            | "debora@ebac.com.br"  | "senha@123" | "Olá Debora"  |
            | "juca@ebac.com.br"    | "senha@123" | "Olá Juca"    |