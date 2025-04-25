Feature: Redirecionar para a tela de Perfil do Profissional
    Como usuário do App,
    Quero poder acessar a tela de perfil de qualquer profissional
    Para poder solicitar um atendimento

    Scenario: Verificar redirecionamento para a tela de Perfil do Profissional
        Given que o paciente se encontre na Tela de Listagem de profissionais
        And exista pelo menos 1 profissional na lista exibida
        When o paciente selecionar o card do profissional
        Then deve ser redirecionado para a Tela de Perfil do profissional