

Feature: Contatar profissional
    Como usuário do App,
    Quero poder enviar mensagem ou ligar para qualquer profissional
    Para poder solicitar um atendimento

    Background:
        Given que o paciente se encontre na Tela de Contatar Profissional

    Scenario Outline: Inserir diferentes tipos de telefone para contatar profissional
        When preencher o campo de número de telefone com "<telefone>"
        And selecionar o botão "Enviar código"
        Then <mensagem>

        Examples:
        | telefone         | mensagem                                                                                     |
        | 11999999999      | um código de validação deve ser enviado via SMS                                              |
        | 11999999998      | deve ser exibida a mensagem com link: "Inseriu um número errado? Corrigir número de celular" |
        | abc123           | uma mensagem de erro deve ser exibida                                                        |
        | (vazio)          | uma mensagem de erro deve ser exibida                                                        |

    Scenario Outline: Inserir código de validação após envio de SMS
        When preencher o campo de número de telefone com "<telefone>" válido
        And selecionar o botão "Enviar código"
        And preencher com "<codigo>"
        Then <resultado>

        Examples:
        | telefone    | codigo                     | resultado                                                                                                             |
        | 11999999999 | codigo que seja válido     | os números de contato do profissional devem ser exibidos                                                              |
        | 11999999999 | codigo que seja inválido   | a mensagem de erro "Código incorreto. Verifique se digitou corretamente ou solicite um novo código" deve ser exibida  |


