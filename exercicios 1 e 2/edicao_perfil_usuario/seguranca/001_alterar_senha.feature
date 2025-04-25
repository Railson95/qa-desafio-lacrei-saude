Feature: Alteração de senha
    Como paciente do sistema
    Quero poder alterar minha senha
    Para garantir a segurança da minha conta

    Background:
        Given que o paciente esteja na aba de segurança

    Scenario: [CT-027] Exibir campos para alteração de senha
        When o paciente selecionar o botão "Alterar senha"
        Then o paciente deve visualizar 3 campos de entrada: "Senha atual", "Nova senha" e "Confirmar senha"

    Scenario: [CT-028] Verificar senha atual
        When o paciente inserir uma senha no campo "Senha atual"
        Then a senha digitada deve ser igual à senha anterior cadastrada no 
        
    Scenario Outline: [CT-029] Validar requisitos mínimos da nova senha
        When o usuário inserir a senha "<nova_senha>" no campo "Nova senha"
        And o usuário inserir a senha "<confirme_senha>" no campo "Confirme nova senha"
        Then os campos "Nova senha" e "Confirme nova senha" devem ser validados com os seguintes requisitos:
        | requisito                       | status      |
        | Mínimo de 8 caracteres           | <caracteres> |
        | 1 letra maiúscula                | <maiuscula> |
        | 1 letra minúscula                | <minuscula> |
        | 1 número                         | <numero>    |
        | 1 caractere especial             | <especial>  |

        Examples:
        | ID   | nova_senha     | confirme_senha | caracteres | maiuscula | minuscula | numero | especial |
        | 001  | Abc1234$       | Abc1234$       | v          | v         | v         | v      | v        |
        | 002  | abc1234        | abc1234        | x          | v         | v         | v      | v        |
        | 003  | ABC1234        | ABC1234        | x          | x         | v         | v      | v        |
        | 004  | Abc1234        | Abc1234        | x          | v         | v         | v      | x        |

    Scenario Outline: [CT-030] Exibir lista de requisitos mínimos de senha com "x" em vermelho
        When o paciente inserir uma senha "<senha>" no campo "Nova senha" que não atende a todos os requisitos
        Then o sistema deve exibir uma lista de requisitos mínimos com "x" vermelho ao lado dos itens não atendidos

        Examples:
        | ID | senha         |
        | 001 | abcd1234      |
        | 002 | ABCD1234      |

    Scenario Outline: [CT-031] Exibir lista de requisitos mínimos de senha com "v" em verde
        When o paciente inserir uma senha "<senha>" no campo "Nova senha" que atende todos os requisitos
        Then o sistema deve exibir uma lista de requisitos mínimos com "v" verde ao lado dos itens atendidos

        Examples:
        | ID  | senha         |
        | 001 | Abcd1234$     |
        | 002 | P@ssw0rd123   |

    Scenario: [CT-032] Comparar "Nova senha" e "Confirmar senha"
        When o paciente inserir a senha "NovaSenha123!" no campo "Nova senha"
        And inserir a senha "NovaSenha1234!" no campo "Confirmar senha"
        Then uma mensagem de erro "Senhas incompatíveis, tente novamente" deve ser exibida

    Scenario: [CT-033] Visualizar a senha digitada
        When o paciente clicar no ícone de olho ao lado do campo "Nova senha"
        Then a senha digitada deve ser visível

    Scenario: [CT-034] Salvar a nova senha e redirecionar para a tela de login
        Given que o paciente tenha inserido todos os dados corretamente
        When o paciente clicar no botão "Salvar senha"
        Then o paciente deve ser redirecionado para a tela de Login

    Scenario: [CT-035] Inserir senha atual incorreta
        When o paciente inserir uma senha incorreta "SenhaErrada123" no campo "Senha atual"
        Then o sistema deve alertar o paciente com a mensagem de erro "Senha incorreta" e redirecioná-lo para a tela de Login

    Scenario: [CT-036] Campos de senha em branco
        When o paciente clicar no botão "Salvar senha" com algum dos 3 campos de senha em branco
        Then o sistema deve exibir a mensagem de erro "Senhas incompatíveis, tente novamente"
