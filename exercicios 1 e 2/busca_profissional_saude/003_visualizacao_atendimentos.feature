Feature: Visualização de antendimentos
    Como usuário do App,
    Quero poder visualizar os tipos de atendimento que o profissional realiza
    Para poder solicitar um atendimento

    Background:
        Given que o paciente se encontre na Tela de Perfil do profissional
        When selecionar a aba de Atendimentos 
        
    Scenario: [CT-021] Verificar os tipos de atendimento que um profissional realiza
        Then uma lista de cards com os tipos de atendimento que aquele profissional realiza, 
        por exemplo, Presencial e Teleconsulta deve ser exibida
    
    Scenario: [CT-022] Verificar redirecionamento para a tela de Contatar Profissional
        And selecionar o botão "Exibir Contato" 
        Then o paciente deve ser redirecionado para a tela de Contatar Profissional