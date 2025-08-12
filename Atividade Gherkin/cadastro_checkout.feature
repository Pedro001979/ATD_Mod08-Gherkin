# language: pt
Funcionalidade: Cadrastro no checkout
Como cliente da EBAC-SHOP, eu quero me cadastrar para finalizar minha compra.[

  Contexto: Dado que eu estou na tela de cadastro do checkout

  Cenário: cadastro com dados Válidos
    Quando eu preencho todos os campos obrigátorios com dados válidos e eu clico no botão "finalizar Compra"
    Então meu cadastro deve ser concluido com sucesso e a compra finalizada

  Cenário: Tentativa de cadastro com email invalido
    Quando eu preencho o email com o formato "email.invalido@email.com" 
    E eu preencho os demais campos obrigátorios e eu clico no botão "Finalizar compra
    Então eu devo ver uma mensagem de erro "O formato do email é invalido"

  Cenário: Tentativa de cadastro com ccampos obrigatorios vazios
    Quando eu deixo o campo "Nome" vazio
    E eu preencho os demais campos obrigatorios com dados validos e eu clico no botão "Finalizar compra"
    Então eu devo ver uma mensagem de alerta "`Por favor, preencha todos os campos obrigatorios"

  Esquema do Cenário: Tentativa de Cadastro de diversos campos
    Quando eu digitar o nome com "<Nome>, <Email>, <Senha>" e eu clico no botão "Finalizar Compra"
    Então eu devo ver a mensagem de "<Mensagem_Esperada>"

    Exemplos:
      | Nome    | Email              | Senha        | Mensagem_Esperada                |
      | Pedro   | Pedro@Email.com    | Pedro@123    | Cadastro Concluido com sucesso   |
      |         | Fabricio@Email.com | Fabricio@123 | Por favor preencha o campo Nome  |
      | Rubens  |                    | Rubens@123   | Por favor preencha o campo email |
      | Juliana | Juliana@email.com  |              | Por favor preencha o campo Senha |
