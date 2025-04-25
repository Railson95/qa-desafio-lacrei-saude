

Feature: Contatar profissional
    Como usuário do App,
    Quero poder enviar mensagem ou ligar para qualquer profissional
    Para poder solicitar um atendimento

    Background:
        Given que o paciente se encontre na Tela de Contatar Profissional

    Scenario Outline: [CT-023] Inserir diferentes tipos de telefone para contatar profissional
        When preencher o campo de número de telefone com "<telefone>"
        And selecionar o botão "Enviar código"
        Then <mensagem>

        Examples:
        | ID  | telefone         | mensagem                                                                                     |
        | 001 | 11999999999      | um código de validação deve ser enviado via SMS                                              |
        | 002 | 11999999998      | deve ser exibida a mensagem com link: "Inseriu um número errado? Corrigir número de celular" |
        | 003 | abc123           | uma mensagem de erro deve ser exibida                                                        |
        | 004 | (vazio)          | uma mensagem de erro deve ser exibida                                                        |

    Scenario Outline: [CT-024] Inserir código de validação após envio de SMS
        When preencher o campo de número de telefone com "<telefone>" válido
        And selecionar o botão "Enviar código"
        And preencher com "<codigo>"
        Then <resultado>

        Examples:
        | ID  | telefone    | codigo                     | resultado                                                                                                             |
        | 001  | 11999999999 | codigo que seja válido     | os números de contato do profissional devem ser exibidos                                                              |
        | 002  | 11999999999 | codigo que seja inválido   | a mensagem de erro "Código incorreto. Verifique se digitou corretamente ou solicite um novo código" deve ser exibida  |


