Feature: Carregamento e apresentação dos dados iniciais

    Background:
        Given que o paciente se encontre na tela inicial de Pós Cadastro

    Scenario: Verificar mensagem de boas-vindas
        Then a mensagem "Boas-vindas à Lacrei Saúde, continue o seu cadastro" deve ser exibida

    Scenario: Verificar redirecionamento para a tela de pronome
        When o paciente selecionar o botão "Continuar cadastro"
        Then deve ser redirecionado para a tela de Pronome
