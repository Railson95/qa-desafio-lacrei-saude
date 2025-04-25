Feature: Carregamento e apresentação dos dados iniciais

    Background:
        Given que o paciente se encontre na tela inicial de Pós Cadastro

    Scenario: [CT-011] Verificar mensagem de boas-vindas
        Then a mensagem "Boas-vindas à Lacrei Saúde, continue o seu cadastro" deve ser exibida

    Scenario: [CT-012] Verificar redirecionamento para a tela de pronome
        When o paciente selecionar o botão "Continuar cadastro"
        Then deve ser redirecionado para a tela de Pronome
