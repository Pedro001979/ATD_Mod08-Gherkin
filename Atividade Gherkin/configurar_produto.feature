# language: pt
Funcionalidade: Configurar Produto
Como Cliente da EBAC-SHOP, eu quero configurar um produto para adiciona-lo ao carrinho.
Para isso, devo selecionar cor, tamanho e quantidade.

  Contexto: Dado que estou na página de um produto

  Cenário: Configurar Produtro com sucesso
    Quando eu seleciono a cor "azul", o tamanho "M" e a quantidade 5
    E Clico no botão "Adicionar ao carrinho"
    Então o produto deve ser adicionado ao carrinho com a quantidade 5

  Cenário: Tentativa de Adicionar mais de 10 produtos.
    Quando eu seleciono a cor "Preto", o Tamanho "G" e a quantidade 11
    Então eu devo ver uma mensagem de erro " Não é possivel Adicionar mais de 10 produtos por venda"

  Cenário: Campos obrigatorios não preenchidos
    Quando eu clico no botão "Adicionar ao Carrinho"
    Então eu devo ver uma mensagem de erro "Por favor, selecione cor, tamanho e quantidade"

  Cenário: Limpar Seleção
    Dado que eu selecionei a cor "Verde", o tamanho "P" e a quantidade 3
    Quando eu clico no botão "Limpar"
    Então a cor, o tamanho e a quantidade devem voltar aos seus valor originais (devem "Zerar")
