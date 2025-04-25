Feature: Cadastro da pessoa usuária
    Como usuário do App,
    Quero criar o cadastro de usuário,
    Para que eu possa gerenciar minhas informações e procurar por profissionais da saúde.

    # Scenario: Redirecionar para a página de Cadastro de Usuário
    #     Given que o paciente esteja na página de Login,
    #     When selecionar o botão "Cadastro de Conta",
    #     Then o paciente deve ser redirecionado para a tela de Cadastro de Conta,

    Background: 
        Given que o paciente esteja na página de Cadastro de Conta,

    Scenario: [CT-001] Inserir dados válidos em todos os campos do formulário e enviar
        When preencher todos os campos com dados válidos,
        And selecionar o botão "Cadastrar"
        Then o usuário deve ser redirecionado para uma página de validação de e-mail, 
        cujo link ficará ativo por 24 horas

    Scenario: [CT-002] Tentar enviar o formulário com todos os campos em branco
        When selecionar o botão "Cadastrar" sem preencher nenhum campo,
        Then as seguintes mensagens de erro em baixo de cado campo devem ser exibidas:
        | ID   | Campo                                                          | Mensagem de Erro                          |
        | 001  | Nome civil ou social                                           | O nome é obrigatório                      |
        | 002  | Sobrenome                                                      | O sobrenome é obrigatório                 |
        | 003  | E-mail                                                         | O e-mail é obrigatório                    |
        | 004  | Confirme seu e-mail                                            | O e-mail é obrigatório                    |
        | 005  | Senha                                                          | A senha é obrigatória                     |
        | 006  | Confirme sua senha                                             | A confirmação da senha é obrigatória      |
        | 007  | Li e concondo com os Termos de uso e Política de privacidade   | Você deve aceitar os termos               |
        | 008  | Tenho 18 anos ou mais                                          | Você deve ter 18 anos ou mais             |


    Scenario: [CT-003] Inserir dados inválidos nos campos do formulário e enviar"
        When selecionar o botão "Cadastrar" com os campos preenchidos com dados inválidos,
        Then as seguintes mensagens de erro em baixo de cado campo devem ser exibidas:
        | ID   | Campo                                                         | Valor              | Mensagem de Erro                                             |
        | 001  | Nome civil ou social                                          | 123test            | Digite um nome válido                                        |
        | 002  | Sobrenome                                                     | 125test            | Digite um sobre nome válido                                  |
        | 003  | E-mail                                                        | 123@123            | Insira um e-mail válido                                      |
        | 004  | Confirme seu e-mail                                           | 123@123            | Insira um e-mail válido                                      |
        | 005  | Senha                                                         | 1                  | A senha deve ter no mínimo 8 caracteres                      |
        | 006  | Senha                                                         | 12345678           | A senha deve conter pelo menos uma letra maiúscula           |
        | 007  | Senha                                                         | 12345678A          | A senha deve conter pelo menos uma letra minúscula           |
        | 008  | Senha                                                         | 12345678Aa         | A senha deve conter pelo menos um caractere especial (#!*-_&)|
        | 009  | Senha                                                         | abcdefghA          | A senha deve conter pelo menos um número                     |
        | 010  | Confirme sua senha                                            | 151                |                                                              |
        | 011  | Li e concondo com os Termos de uso e Política de privacidade | sem marcar         | Você deve aceitar os termos                                  |
        | 012  | Tenho 18 anos ou mais                                         | sem marcar         | Você deve ter 18 anos ou mais                                |


    Scenario: [CT-004] Inserir e-mails válidos diferentes nos campos de e-mail e confirmar e-mail e enviar o formulário
        When selecionar o botão "Cadastrar" com os campos preenchidos com dados válidos,
        But os campos e-mail e confirmar e-mail devem ser diferentes
        Then a seguinte mensagem de erro em baixo de cado campo deve ser exibida:
        | ID   | Campo               | Valor                 | Mensagem de Erro                              |
        | 001  | E-mail              | tiago.silva@gmail.com | Os e-mails não correspondem, digite novamente |
        | 002  | Confirme seu e-mail | tiago.silva2@gmail.com| Os e-mails não correspondem, digite novamente |
  

    Scenario: [CT-005] Inserir senhas válidas diferentes nos campos de senha e confirmar senha e enviar o formulário
        When selecionar o botão "Cadastrar" com os campos preenchidos com dados válidos,
        But os campos senha e confirmar senha devem ser diferentes
        Then a seguinte mensagem de erro em baixo de cado campo deve ser exibida:
        | ID   | Campo               | Valor       | Mensagem de Erro                       |
        | 001  | Senha               | Lacrei(01)  |                                       |
        | 002  | Confirme sua senha  | Lacrei(02)  | Senhas incompatíveis, tente novamente. |
 




