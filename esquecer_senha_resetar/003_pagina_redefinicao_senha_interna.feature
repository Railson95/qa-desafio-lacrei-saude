Feature: Redefinição de senha
  Como paciente do sistema
  Quero poder redefinir minha senha
  Para recuperar o acesso à minha conta

  Background:
    Given o paciente esteja na página de Redefinição de Senha

  Scenario: Exibir campo de e-mail na página de Redefinição de Senha
    Then o paciente deve visualizar um campo de entrada de texto para inserir seu e-mail

  Scenario Outline: Inserir e-mail e enviar link
    And o paciente inserir o e-mail "<email>"
    And selecionar o botão "Enviar link"
    Then a mensagem "<mensagem>" deve ser exibida
    And o paciente deve ser redirecionado para a página "<pagina>"

    Examples:
      | email                | mensagem                                                                                   | pagina                  |
      | valido@dominio.com   | O link para redefinição de senha foi enviado para o seu e-mail                             | Verificar E-mail        |
      | emailinvalido.com    | Por favor, utilize um formato de e-mail válido. Por exemplo: email@dominio.com.br          | Página de Redefinição  |
      |                      | DDD ou número de telefone incorreto. Digite novamente                                      | Página de Redefinição   |

  Scenario Outline: Deixar campo de e-mail em branco e enviar link
    And o paciente deixar o campo de e-mail em branco
    And selecionar o botão "Enviar link"
    Then a mensagem de erro "Por favor, utilize um formato de e-mail válido. Por exemplo: email@dominio.com.br" deve ser exibida
    And o paciente deve permanecer na página de Redefinição de Senha
