Feature: Edição de dados de pessoais
    Como paciente do sistema
    Quero poder editar meu número de telefone e e-mail
    Para manter meus dados atualizados e corretos

    Background:
        Given que o paciente esteja na aba de segurança
        When o paciente selecionar o botão "Editar dados"
        
    Scenario: [CT-037] Exibir campos para editar telefone e e-mail
        Then o paciente deve visualizar 2 campos de texto: um para editar o "Telefone" e outro para editar o "E-mail"

    Scenario: [CT-038] Inserir número de telefone inválido
        When o paciente inserir um número inválido no campo "Telefone"
        Then o sistema deve exibir uma mensagem de erro "DDD ou número de telefone incorreto. Digite novamente"

    Scenario: [CT-039] Inserir número de telefone válido
        When o paciente inserir um número válido no campo "Telefone"
        Then o paciente deve ser redirecionado para a aba padrão de Segurança

    Scenario: [CT-040] Deixar o campo "Telefone" em branco
        When o paciente deixar o campo "Telefone" em branco
        Then o sistema deve exibir uma mensagem de erro "DDD ou número de telefone incorreto. Digite novamente"
