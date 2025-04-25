Feature: Redefinição de senha após receber o e-mail de recuperação
    Como usuário que esqueceu a senha
    Quero poder redefinir minha senha
    Para recuperar o acesso à minha conta

    Scenario: Redirecionamento após clicar no botão "Redefinir senha" no e-mail
        Given que o usuário tenha recebido o e-mail de redefinição de senha
        When o usuário clicar no botão "Redefinir senha" no e-mail
        Then o usuário deve ser redirecionado para uma página de confirmação de Redefinição de Senha

    Scenario Outline: Validar requisitos mínimos da nova senha
        Given que o usuário esteja na página de confirmação de Redefinição de Senha
        When o usuário digitar a senha "<nova_senha>" no campo "Nova senha"
        And o usuário digitar a senha "<confirme_senha>" no campo "Confirme nova senha"
        Then os campos "Nova senha" e "Confirme nova senha" devem ser validados com os seguintes requisitos:
        | requisito                       | status      |
        | Mínimo de 8 caracteres           | <caracteres> |
        | 1 letra maiúscula                | <maiuscula> |
        | 1 letra minúscula                | <minuscula> |
        | 1 número                         | <numero>    |
        | 1 caractere especial             | <especial>  |

        Examples:
        | nova_senha     | confirme_senha | caracteres | maiuscula | minuscula | numero | especial |
        | Abc1234$       | Abc1234$       | v          | v         | v         | v      | v        |
        | abc1234        | abc1234        | x          | v         | v         | v      | v        |
        | ABC1234        | ABC1234        | x          | x         | v         | v      | v        |
        | Abc1234        | Abc1234        | x          | v         | v         | v      | x        |

    Scenario: Verificar se as senhas "Nova senha" e "Confirme nova senha" são iguais
        Given que o usuário esteja na página de confirmação de Redefinição de Senha
        When o usuário digitar a senha "NovaSenha123!" no campo "Nova senha"
        And o usuário digitar a senha "NovaSenha123!" no campo "Confirme nova senha"
        Then os campos "Nova senha" e "Confirme nova senha" devem ser iguais

    Scenario: Exibir lista de requisitos mínimos com "x" em vermelho para senha incorreta
        Given que o usuário esteja na página de confirmação de Redefinição de Senha
        When o usuário digitar uma senha inválida no campo "Nova senha"
        Then o sistema deve exibir uma lista de requisitos mínimos de senha com "x" vermelho ao lado dos itens não atendidos

    Scenario: Exibir lista de requisitos mínimos com "v" em verde para senha válida
        Given que o usuário esteja na página de confirmação de Redefinição de Senha
        When o usuário digitar uma senha válida no campo "Nova senha"
        Then o sistema deve exibir uma lista de requisitos mínimos de senha com "v" verde ao lado dos itens atendidos

    Scenario: Inserir a mesma senha atual como "Nova senha"
        Given que o usuário esteja na página de confirmação de Redefinição de Senha
        When o usuário digitar a mesma senha atual no campo "Nova senha"
        And o usuário clicar no botão "Cadastrar nova senha"
        Then o sistema deve exibir a mensagem "Uma nova senha não pode ser igual à atual"
