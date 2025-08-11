# language: pt
Funcionalidade: login na Plataforma
Como cliente da EBAC-SHOP, eui quero fazer o login para visualizar meus pedidos.

  Contexto: Dado que eu estou na página de login

  Cenário: Login com dados Válidos
    Quando eu insiro o usuario "usuario.valido@email.com" e a senha "Senha@123"
    E Clico no botão "Entrar" ou "Logar"
    Então eu devo ser redirecionado para a tela de checkout

  Cenário: Login com usuario inválido
    Quando eu insiro o usuario "usuario.invalido@email.com" e a senha "Senha@123"
    E Clico no botão "Entrar" ou "Logar"
    Então eu devo ver uma mensagem de alerta "Usuario ou senha inválidos"

  Cenário: Login com usuario inválido
    Quando eu insiro o usuario "usuario.valido@email.com" e a senha "senha_invalida"
    E Clico no botão "Entrar" ou "Logar"
    Então eu devo ver uma mensagem de alerta "Usuario ou senha inválidos"
