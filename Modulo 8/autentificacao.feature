#language:pt

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