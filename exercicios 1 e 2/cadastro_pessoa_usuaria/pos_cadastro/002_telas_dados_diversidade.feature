Feature: Pós Cadastro – Validação de Telas e Navegação
  Como usuário do App,
  Quero poder realizar a escolha de opções como Pronome, Etnia, Gênero, Sexualidade e Deficiência 
  Para poder personalizar minha experiência na Lacrei Saúde.

  Background:
    Given que o usuário esteja na etapa de Pós Cadastro na tela de <Tela>

  Scenario Outline: Verificar menu enumerado de 1 a 5 nas telas de Pós Cadastro
    Then no topo da tela, um menu enumerado de 1 a 5, na horizontal, o qual o usuário poderá navegar pelas telas de “Pós Cadastro”
    como: Pronome, Etnia, Gênero, Sexualidade e Deficiência deve ser exibido

    Examples:
      | Tela       |
      | pronome    |
      | etnia      |
      | gênero     |
      | sexualidade|
      | deficiência|

  Scenario Outline: Validação da seleção de opções nas telas de Pós Cadastro
    When <Ação>
    And o paciente selecionar o botão de <Tipo Botão>
    Then <Resultado>

    Examples:
      | Tela    | Ação                                                                                      | Tipo Botão   | Resultado                                                                              |
      | pronome | não selecionar nenhuma das opções                                                         | Próximo      | a mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      | pronome | selecionar a opção: a/Ela/Dela                                                            | Próximo      | deve ser redirecionado para a tela de Etnia                                            |
      | pronome | selecionar a opção: o/Ele/Dele                                                            | Próximo      | deve ser redirecionado para a tela de Etnia                                            |
      | pronome | selecionar a opção: e/Elu/Delu                                                            | Próximo      | deve ser redirecionado para a tela de Etnia                                            |
      | pronome | selecionar a opção Outro                                                                  | Próximo      | uma caixa de texto deve ser exibida                                                    |
      | pronome | selecionar a opção Outro e inserir dados inválidos                                        | Próximo      | a mensagem de erro: "Este é um campo obrigatório" deve ser exibida                     |
      | pronome | selecionar a opção Outro e inserir dados válidos                                          | Próximo      | deve ser redirecionado para a tela de Etnia                                            |
      | etnia   | não selecionar nenhuma das opções                                                         | Próximo      | a mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      | etnia   | selecionar a opção: Amarela                                                               | Próximo      | deve ser redirecionado para a tela de Gênero                                           |
      | etnia   | selecionar a opção: Branca                                                                | Próximo      | deve ser redirecionado para a tela de Gênero                                           |
      | etnia   | selecionar a opção: Indígena                                                              | Próximo      | deve ser redirecionado para a tela de Gênero                                           |
      | etnia   | selecionar a opção: Preta                                                                 | Próximo      | deve ser redirecionado para a tela de Gênero                                           |
      | etnia   | selecionar a opção: Parda                                                                 | Próximo      | deve ser redirecionado para a tela de Gênero                                           |
      | etnia   | selecionar a opção Outro                                                                  | Próximo      | uma caixa de texto deve ser exibida                                                    |
      | etnia   | selecionar a opção Outro e inserir dados inválidos                                        | Próximo      | a mensagem de erro: "Este é um campo obrigatório" deve ser exibida                     |
      | etnia   | selecionar a opção Outro e inserir dados válidos                                          | Próximo      | deve ser redirecionado para a tela de Gênero                                           |
      | gênero   | não selecionar nenhuma das opções                                                        | Próximo      | a mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      | gênero   | selecionar a opção: Agênera                                                              | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | gênero   | selecionar a opção: Fluida                                                               | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | gênero   | selecionar a opção:  Homem Cis                                                           | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | gênero   | selecionar a opção: Homem Trans                                                          | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | gênero   | selecionar a opção: Mulher Cis                                                           | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | gênero   | selecionar a opção: Mulher Trans                                                         | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | gênero   | selecionar a opção: Não-Binária                                                          | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | gênero   | selecionar a opção: Travesti                                                             | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | gênero   | selecionar a opção Outro                                                                 | Próximo      | uma caixa de texto deve ser exibida                                                    |
      | gênero   | selecionar a opção Outro e inserir dados inválidos                                       | Próximo      | a mensagem de erro: "Este é um campo obrigatório" deve ser exibida                     |
      | gênero   | selecionar a opção Outro e inserir dados válidos                                         | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | sexualidade | não selecionar nenhuma das opções                                                     | Próximo      | a mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      | sexualidade | selecionar a opção: Assexual                                                          | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | sexualidade | selecionar a opção: Bissexual                                                         | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | sexualidade | selecionar a opção: Demissexual                                                       | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | sexualidade | selecionar a opção: Gay                                                               | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | sexualidade | selecionar a opção: Heterossexual                                                     | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | sexualidade | selecionar a opção: Pansexual                                                         | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | sexualidade | selecionar a opção: Lésbica                                                           | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | sexualidade | selecionar a opção Outro                                                              | Próximo      | uma caixa de texto deve ser exibida                                                    |
      | sexualidade | selecionar a opção Outro e inserir dados inválidos                                    | Próximo      | a mensagem de erro: "Este é um campo obrigatório" deve ser exibida                     |
      | sexualidade | selecionar a opção Outro e inserir dados válidos                                      | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | deficiência | não selecionar nenhuma das opções                                                     | Próximo      | a mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      | deficiência | selecionar a opção: Não possuo deficiência                                            | Concluir     | deve ser redirecionado para a tela de Cadastro Finalizado                              |
      | deficiência | selecionar pelo menos uma das opções: Auditiva, Cognitiva, Motora, Múltipla, Visual   | Concluir     | deve ser redirecionado para a tela de Cadastro Finalizado                              |
      | deficiência | selecionar a opção Outro                                                              | Concluir     | uma caixa de texto deve ser exibida                                                    |
      | deficiência | selecionar a opção Outro e inserir dados inválidos                                    | Concluir     | a mensagem de erro: "Este é um campo obrigatório" deve ser exibida                     |
      | deficiência | selecionar a opção Outro e inserir dados válidos                                      | Concluir     | deve ser redirecionado para a tela de Cadastro Finalizado                              |


  Scenario Outline: Tentar voltar para a tela anterior sem marcar nenhuma opção
    When selecionar o botão de "Voltar"
    Then <Resultado>

    Examples:
      | Tela        | Resultado                                                                                |
      | pronome     | o paciente deve ser redirecionado para a Tela Incial de Pós Cadastro                     |
      | etnia       | uma mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      | gênero      | uma mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      | sexualidade | uma mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      | deficiência | uma mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
