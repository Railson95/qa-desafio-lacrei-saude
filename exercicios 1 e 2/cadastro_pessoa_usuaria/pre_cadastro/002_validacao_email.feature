Feature: Validação do e-mail
    Como usuário do App,
    Quero poder validar o e-mail,
    Para garantir minha segurança e de outros usuários da aplicação.

    Background:
        Given o paciente se encontre na tela de validação de e-mail

    Scenario: [CT-005] Verificar mensagem informando o tempo que o link de validação ficará ativo
    Then o sistema deve exibir uma mensagem informando quanto tempo o link de validação
    ficará ativo

    Scenario: [CT-006] Verificar redirecionamento para a tela de Login ao selecionar botão
    When paciente selecionar o botão "Voltar ao Login"
    Then deve ser redirecionado para a tela de Login

    Scenario: [CT-007] Validar link para reenviar solicitação de validação do e-mail
    When paciente selecionar o link "Reenviar"
    Then um novo link de validação deve ser enviado
    And uma mensagem de sucesso deve ser exibida na tela
