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

    Scenario: Inserir dados válidos em todos os campos do formulário e enviar
        When preencher todos os campos com dados válidos,
        And selecionar o botão "Cadastrar"
        Then o usuário deve ser redirecionado para uma página de validação de e-mail, 
        cujo link ficará ativo por 24 horas

    Scenario: Tentar enviar o formulário com todos os campos em branco
        When selecionar o botão "Cadastrar" sem preencher nenhum campo,
        Then as seguintes mensagens de erro em baixo de cado campo devem ser exibidas:
        | Campo                                     | Mensagem de Erro                      | 
        | Nome civil ou social,                     | O nome é obrigatório                  |
        | Sobrenome,                                | O sobrenome é obrigatório             |
        | E-mail,                                   | O e-mail é obrigatório                |
        | Confirme seu e-mail,                      | O e-mail é obrigatório                |
        | Senha,                                    | A senha é obrigatória                 |
        | Confirme sua senha,                       | A confirmação da senha é obrigatória  |
        | Li e concondo com os  
        Termos de uso e Política de privacidade,    | Você deve aceitar os termos           |
        | Tenho 18 anos ou mais,                    | Você deve ter 18 anos ou mais         |

    Scenario: Inserir dados inválidos nos campos do formulário e enviar"
        When selecionar o botão "Cadastrar" com os campos preenchidos com dados inválidos,
        Then as seguintes mensagens de erro em baixo de cado campo devem ser exibidas:
        | Campo                                                         | Valor              | Mensagem de Erro                                             | 
        | Nome civil ou social,                                         | 123test            | Digite um nome válido                                        |
        | Sobrenome,                                                    | 125test            | Digite um sobre nome válido                                  |
        | E-mail,                                                       | 123@123            | Insira um e-mail válido                                      |
        | Confirme seu e-mail,                                          | 123@123            | Insira um e-mail válido                                      |
        | Senha,                                                        | 1                  | A senha deve ter no mínimo 8 caracteres                      |
        | Senha,                                                        | 12345678           | A senha deve conter pelo menos uma letra maiúscula           |
        | Senha,                                                        | 12345678A          | A senha deve conter pelo menos uma letra minúscula           |
        | Senha,                                                        | 12345678Aa         | A senha deve conter pelo menos um caractere especial (#!*-_&)|
        | Senha,                                                        | abcdefghA          | A senha deve conter pelo menos um número                     |
        | Confirme sua senha,                                           | 151                |                                                              |
        | Li e concondo com os Termos de uso e Política de privacidade  | sem marcar         | Você deve aceitar os termos                                  |
        | Tenho 18 anos ou mais,                                        | sem marcar         | Você deve ter 18 anos ou mais                                |

    Scenario: Inserir e-mails válidos diferentes nos campos de e-mail e confirmar e-mail e enviar o formulário
        When selecionar o botão "Cadastrar" com os campos preenchidos com dados válidos,
        But os campos e-mail e confirmar e-mail devem ser diferentes
        Then a seguinte mensagem de erro em baixo de cado campo deve ser exibida:
        | Campo                 | Valor                 | Mensagem de Erro                              |
        | E-mail                | tiago.silva@gmail.com | Os e-mails não correspondem, digite novamente |
        | Confirme seu e-mail   | tiago.silva2@gmail.com| Os e-mails não correspondem, digite novamente |   

    Scenario: Inserir senhas válidas diferentes nos campos de senha e confirmar senha e enviar o formulário
        When selecionar o botão "Cadastrar" com os campos preenchidos com dados válidos,
        But os campos senha e confirmar senha devem ser diferentes
        Then a seguinte mensagem de erro em baixo de cado campo deve ser exibida:
        | Campo                 | Valor                 | Mensagem de Erro                       |
        | Senha                 | Lacrei(01)            |                                        |
        | Confirme sua senha    | Lacrei(02)            | Senhas incompatíveis, tente novamente. |  




