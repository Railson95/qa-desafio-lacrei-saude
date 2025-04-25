Feature: Fazer login no sistema
    Como usuário do App,
    Quero poder entrar na aplicação,
    Para que eu possa gerenciar minhas informações e procurar por profissionais da saúde.

    Background:
        Given que o paciente esteja na tela de Login
        When o paciente selecionar o botão "Entrar"

    Scenario: Enviar o formulário com todos os campos em branco
        And os campos estiverem em branco
        Then logo abaixo de cada campo, a mensagem de erro: "Este campo é obrigatório"
        deve ser exibida

    Scenario: Enviar o formulário com todos os campos válidos
        And os campos forem válidos
        And for o primeiro Login
        Then o paciente será redirecionado para a tela de Pós Cadastro

    Scenario Outline: Enviar o formulário com campos inválidos
        When o paciente inserir email <status1> e senha <status1>
        Then a seguinte mensagem de erro deve ser exibida: " E-mail ou senha incorretos. Esqueceu sua senha? Clique em "Esqueci minha senha" para recuperá-la"

        Examples:
            | status1 | status2 |                                                                                          
            | válido  | inválida|  
            | inválido| válida  | 
            | inválido| inválida| 

    
