Feature: Pós Cadastro – Validação de Telas e Navegação
  Como usuário do App,
  Quero poder realizar a escolha de opções como Pronome, Etnia, Gênero, Sexualidade e Deficiência 
  Para poder personalizar minha experiência na Lacrei Saúde.

  Background:
    Given que o usuário esteja na etapa de Pós Cadastro na tela de <Tela>

  Scenario Outline: [CT-013] Verificar menu enumerado de 1 a 5 nas telas de Pós Cadastro
    Then no topo da tela, um menu enumerado de 1 a 5, na horizontal, o qual o usuário poderá navegar pelas telas de “Pós Cadastro”
    como: Pronome, Etnia, Gênero, Sexualidade e Deficiência deve ser exibido

    Examples:
      | ID   | Tela        |
      | 001  | pronome     |
      | 002  | etnia       |
      | 003  | gênero      |
      | 004  | sexualidade |
      | 005  | deficiência |


  Scenario Outline: [CT-014] Validação da seleção de opções nas telas de Pós Cadastro
    When <Ação>
    And o paciente selecionar o botão de <Tipo Botão>
    Then <Resultado>

    Examples:
      | ID  | Tela         | Ação                                                                                      | Tipo Botão   | Resultado                                                                              |
      | 001 | pronome      | não selecionar nenhuma das opções                                                         | Próximo      | a mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      | 002 | pronome      | selecionar a opção: a/Ela/Dela                                                            | Próximo      | deve ser redirecionado para a tela de Etnia                                            |
      | 003 | pronome      | selecionar a opção: o/Ele/Dele                                                            | Próximo      | deve ser redirecionado para a tela de Etnia                                            |
      | 004 | pronome      | selecionar a opção: e/Elu/Delu                                                            | Próximo      | deve ser redirecionado para a tela de Etnia                                            |
      | 005 | pronome      | selecionar a opção Outro                                                                  | Próximo      | uma caixa de texto deve ser exibida                                                    |
      | 006 | pronome      | selecionar a opção Outro e inserir dados inválidos                                        | Próximo      | a mensagem de erro: "Este é um campo obrigatório" deve ser exibida                     |
      | 007 | pronome      | selecionar a opção Outro e inserir dados válidos                                          | Próximo      | deve ser redirecionado para a tela de Etnia                                            |
      | 008 | etnia        | não selecionar nenhuma das opções                                                         | Próximo      | a mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      | 009 | etnia        | selecionar a opção: Amarela                                                               | Próximo      | deve ser redirecionado para a tela de Gênero                                           |
      | 010 | etnia        | selecionar a opção: Branca                                                                | Próximo      | deve ser redirecionado para a tela de Gênero                                           |
      | 011 | etnia        | selecionar a opção: Indígena                                                              | Próximo      | deve ser redirecionado para a tela de Gênero                                           |
      | 012 | etnia        | selecionar a opção: Preta                                                                 | Próximo      | deve ser redirecionado para a tela de Gênero                                           |
      | 013 | etnia        | selecionar a opção: Parda                                                                 | Próximo      | deve ser redirecionado para a tela de Gênero                                           |
      | 014 | etnia        | selecionar a opção Outro                                                                  | Próximo      | uma caixa de texto deve ser exibida                                                    |
      | 015 | etnia        | selecionar a opção Outro e inserir dados inválidos                                        | Próximo      | a mensagem de erro: "Este é um campo obrigatório" deve ser exibida                     |
      | 016 | etnia        | selecionar a opção Outro e inserir dados válidos                                          | Próximo      | deve ser redirecionado para a tela de Gênero                                           |
      | 017 | gênero       | não selecionar nenhuma das opções                                                         | Próximo      | a mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      | 018 | gênero       | selecionar a opção: Agênera                                                               | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | 019 | gênero       | selecionar a opção: Fluida                                                                | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | 020 | gênero       | selecionar a opção:  Homem Cis                                                            | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | 021 | gênero       | selecionar a opção: Homem Trans                                                           | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | 022 | gênero       | selecionar a opção: Mulher Cis                                                            | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | 023 | gênero       | selecionar a opção: Mulher Trans                                                          | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | 024 | gênero       | selecionar a opção: Não-Binária                                                           | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | 025 | gênero       | selecionar a opção: Travesti                                                              | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | 026 | gênero       | selecionar a opção Outro                                                                  | Próximo      | uma caixa de texto deve ser exibida                                                    |
      | 027 | gênero       | selecionar a opção Outro e inserir dados inválidos                                        | Próximo      | a mensagem de erro: "Este é um campo obrigatório" deve ser exibida                     |
      | 028 | gênero       | selecionar a opção Outro e inserir dados válidos                                          | Próximo      | deve ser redirecionado para a tela de Sexualidade                                      |
      | 029 | sexualidade  | não selecionar nenhuma das opções                                                         | Próximo      | a mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      | 030 | sexualidade  | selecionar a opção: Assexual                                                              | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | 031 | sexualidade  | selecionar a opção: Bissexual                                                             | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | 032 | sexualidade  | selecionar a opção: Demissexual                                                           | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | 033 | sexualidade  | selecionar a opção: Gay                                                                   | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | 034 | sexualidade  | selecionar a opção: Heterossexual                                                         | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | 035 | sexualidade  | selecionar a opção: Pansexual                                                             | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | 036 | sexualidade  | selecionar a opção: Lésbica                                                               | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | 037 | sexualidade  | selecionar a opção Outro                                                                  | Próximo      | uma caixa de texto deve ser exibida                                                    |
      | 038 | sexualidade  | selecionar a opção Outro e inserir dados inválidos                                        | Próximo      | a mensagem de erro: "Este é um campo obrigatório" deve ser exibida                     |
      | 039 | sexualidade  | selecionar a opção Outro e inserir dados válidos                                          | Próximo      | deve ser redirecionado para a tela de Deficiência                                      |
      | 040 | deficiência  | não selecionar nenhuma das opções                                                         | Próximo      | a mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      | 041 | deficiência  | selecionar a opção: Não possuo deficiência                                                | Concluir     | deve ser redirecionado para a tela de Cadastro Finalizado                              |
      | 042 | deficiência  | selecionar pelo menos uma das opções: Auditiva, Cognitiva, Motora, Múltipla, Visual       | Concluir     | deve ser redirecionado para a tela de Cadastro Finalizado                              |
      | 043 | deficiência  | selecionar a opção Outro                                                                  | Concluir     | uma caixa de texto deve ser exibida                                                    |
      | 044 | deficiência  | selecionar a opção Outro e inserir dados inválidos                                        | Concluir     | a mensagem de erro: "Este é um campo obrigatório" deve ser exibida                     |
      | 045 | deficiência  | selecionar a opção Outro e inserir dados válidos                                          | Concluir     | deve ser redirecionado para a tela de Cadastro Finalizado                              |


  Scenario Outline: [CT-015] Tentar voltar para a tela anterior sem marcar nenhuma opção
    When selecionar o botão de "Voltar"
    Then <Resultado>

    Examples:
      |ID | Tela        | Resultado                                                                                |
      |001| pronome     | o paciente deve ser redirecionado para a Tela Incial de Pós Cadastro                     |
      |002| etnia       | uma mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      |003| gênero      | uma mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      |004| sexualidade | uma mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
      |005| deficiência | uma mensagem de erro: "Por favor, selecione uma das opções disponíveis" deve ser exibida |
