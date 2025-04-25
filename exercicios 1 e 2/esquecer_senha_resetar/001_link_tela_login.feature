Feature: Redirecionar para a página de Redefinição de Senha
  Como paciente do sistema
  Quero poder redefinir minha senha
  Para recuperar o acesso à minha conta

  Background:
    Given que o paciente esteja na tela de login

  Scenario: [CT-041] Exibir link "Esqueci minha senha" na tela de login
    Then o paciente deve visualizar um link com a mensagem "Esqueci minha senha"

  Scenario: [CT-042] Selecionar o link "Esqueci minha senha"
    When o paciente selecionar o link "Esqueci minha senha"
    Then o paciente deve ser redirecionado para a página de Redefinição de Senha