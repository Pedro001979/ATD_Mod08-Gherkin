# ATD_Mod08-Gherkin

Histórias de Usuário - EBAC-SHOP
Este projeto contém as histórias de usuário e os cenários de teste escritos em Gherkin para o sistema EBAC-SHOP. As histórias de usuário foram criadas para auxiliar no desenvolvimento e na automação de testes, utilizando a metodologia BDD (Behavior-Driven Development) com a ferramenta Cucumber/SpecFlow.

Histórias de Usuário Detalhadas
1. [US-0001] – Configurar Produto

Descrição: Como cliente da EBAC-SHOP, quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade, para depois inserir no carrinho.


Prioridade: Média.


Pontuação: 13.

Critérios de Aceitação:

As seleções de cor, tamanho e quantidade devem ser obrigatórias.

Deve permitir apenas 10 produtos por venda.

Quando eu clicar no botão “limpar” deve voltar ao estado original.

2. [US-0002] – Login na Plataforma

Descrição: Como cliente da EBAC-SHOP, quero fazer o login (autenticação) na plataforma para visualizar meus pedidos.


Prioridade: Média.


Pontuação: 8.

Critérios de Aceitação:

Ao inserir dados válidos, o usuário deve ser direcionado para a tela de checkout.

Ao inserir um dos campos inválidos, deve exibir uma mensagem de alerta “Usuário ou senha inválidos”.

3. [US-0003] – Tela de Cadastro - Checkout

Descrição: Como cliente da EBAC-SHOP, quero concluir meu cadastro para finalizar minha compra.


Prioridade: Média.


Pontuação: 13.

Critérios de Aceitação:

Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos.

Não deve permitir campo e-mail com formato inválido. O sistema deve inserir uma mensagem de erro.

Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.

Como Usar os Cenários
Os cenários foram escritos em Gherkin e podem ser utilizados para automação de testes com ferramentas como Cucumber ou SpecFlow.

Exemplo de Cenário (US-0003)
O cenário abaixo utiliza um 

Esquema do Cenário (Scenario Outline) para testar o fluxo de cadastro com diferentes dados de entrada, incluindo casos de sucesso e de falha, conforme a observação na história de usuário.

Esquema do Cenário: Tentativa de cadastro com diferentes dados
  Dado que estou na tela de cadastro no checkout
  Quando eu preencho o nome com "<nome>"
  E eu preencho o e-mail com "<email>"
  E eu preencho a senha com "<senha>"
  E eu clico no botão "Finalizar compra"
  Então eu devo ver a mensagem de "<mensagem_esperada>"

  Exemplos:
    | nome           | email                   | senha      | mensagem_esperada                                   |
    | José Ernesto   | jose.ernesto@ebac.com   | Senha123   | Cadastro concluído com sucesso                      |
    |                | email@valido.com        | Senha123   | Por favor, preencha todos os campos obrigatórios    |
    | Cliente Teste  | email_invalido.com      | Senha123   | O formato do e-mail é inválido                      |
    | Cliente Teste  | email_sem_senha@mail.com|            | Por favor, preencha todos os campos obrigatórios    |
