Feature: Buscar Profissional Pos Cadastro
    Como usuário do App,
    Quero poder buscar qualquer profissional por profissão, especialidade, localidade, sexualidade ou identidade de gênero,
    Para poder selecionar aquele que eu desejo e marcar uma consulta.

    Background:
        Given que o paciente esteja na tela de Buscar Profissional Pos Cadastro
    
    Scenario: [CT-016] Verificar campo de busca
        Then deve ser exibido um campo de entrada de texto, com uma lupa a direta
        And deve ser exibida uma mensagem em verde dando dicas ao usuário de como realizar
        a busca por um profissional, por exemplo: “Ex.: médica trans ou médico gay”
    
    Scenario Outline: [CT-017] Validar lista de profissionais cadastrados no sistema 
        And o paciente <Termo da Busca>
        When <Ação> 
        And <Situação da Base de Dados>
        Then <Resultado>

    Examples: 
    | ID    | Ação                           | Termo da Busca                   |  Situação da Base de Dados               | Resultado   |
    | 001   | O paciente selecionar a Lupa   | inserir uma profissão            |  Existir elementos na base de dados      | uma lista com a informação solicitada deve ser exibida And deve vir acompanhada da seguinte mensagem: "Encontramos x resultado(s) para “termo da busca” ”, onde x é o número de profissionais que atendem a busca."|
    | 002   | O paciente selecionar a Lupa   | inserir uma especialidade        |  Existir elementos na base de dados      | uma lista com a informação solicitada deve ser exibida And deve vir acompanhada da seguinte mensagem: "Encontramos x resultado(s) para “termo da busca” ”, onde x é o número de profissionais que atendem a busca."|            
    | 003   | O paciente selecionar a Lupa   | inserir uma localidade           |  Existir elementos na base de dados      | uma lista com a informação solicitada deve ser exibida And deve vir acompanhada da seguinte mensagem: "Encontramos x resultado(s) para “termo da busca” ”, onde x é o número de profissionais que atendem a busca."|            
    | 004   | O paciente selecionar a Lupa   | inserir uma sexualidade          |  Existir elementos na base de dados      | uma lista com a informação solicitada deve ser exibida And deve vir acompanhada da seguinte mensagem: "Encontramos x resultado(s) para “termo da busca” ”, onde x é o número de profissionais que atendem a busca."|            
    | 005   | O paciente selecionar a Lupa   | inserir uma identidade de gênero |  Existir elementos na base de dados      | uma lista com a informação solicitada deve ser exibida And deve vir acompanhada da seguinte mensagem: "Encontramos x resultado(s) para “termo da busca” ”, onde x é o número de profissionais que atendem a busca."| 
    | 006   | O paciente selecionar a Lupa   | inserir uma profissão            |  Não Existir elementos na base de dados  | a seguinte mensagem deve ser exibida: "Não encontramos o que você procura"|
    | 007   | O paciente selecionar a Lupa   | inserir uma especialidade        |  Não Existir elementos na base de dados  | a seguinte mensagem deve ser exibida: "Não encontramos o que você procura"|
    | 008   | O paciente selecionar a Lupa   | inserir uma localidade           |  Não Existir elementos na base de dados  | a seguinte mensagem deve ser exibida: "Não encontramos o que você procura"|
    | 009   | O paciente selecionar a Lupa   | inserir uma sexualidade          |  Não Existir elementos na base de dados  | a seguinte mensagem deve ser exibida: "Não encontramos o que você procura"|
    | 010   | O paciente selecionar a Lupa   | inserir uma identidade de gênero |  Não Existir elementos na base de dados  | a seguinte mensagem deve ser exibida: "Não encontramos o que você procura"|
    | 011   | O paciente selecionar a Lupa   | não inserir nenhuma informação   |  Existir elementos na base de dados      | Deve ser redirecionado para uma página de listagem com todos os profissionais cadastrados no sist|e001ma|