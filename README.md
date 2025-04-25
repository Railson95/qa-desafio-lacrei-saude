# qa-desafio-lacrei-saude
Desafio técnico para vaga de voluntariado em QA para a ONG Lacrei Saúde

# Para os exercícios 1 e 2

# Como configurar o ambiente de testes manual
- Baixar e instalar o VSCode
- Fazer o clone do repositorio
- Instalar as seguintes extensões para Gherkin
    - Snippets and Syntax Highlight for Gherkin (Cucumber)
    - Gherkin Indent
- navegador Google Chrome 135.0.7049.115 (Versão oficial) 64 bits
- gravador de tela e software de captura Screenpresso
- Conexão estável com a internet
- Casos de teste revisados e compreendidos
- Tempo estimado para execução 10 horas

# Como executar os casos de teste
- 1° conjunto de testes a serem feitos estão na pasta: cadastro_pessoa_usuaria
    - subpasta pre_cadastro, seguir a ordem dos arquivos: 
        - 001_tela_cadastro.feature
        - 002_validacao_email.feature
        - 003_login.feature
- 2° conjunto de testes a serem feitos estão na pasta: cadastro_pessoa_usuaria
    - subpasta pos_cadastro, seguir a ordem dos arquivos: 
        - 001_tela_inicial.feature
        - 002_telas_dados_diversidade.feature
        - 003_busca_profissional.feature
- 3° conjunto de testes a serem feitos estão na pasta: busca_profissional_saude
    - seguir a ordem dos arquivos: 
        - 001_busca_profissional.feature
        - 002_acessar_perfil_profissional.feature
        - 003_visualizacao_atendimentos.feature
        - 004_contatar_profissional.feature
- 4° conjunto de testes a serem feitos estão na pasta: editar_perfil_usuario
    - subpasta informacoes_pessoais, seguir a ordem dos arquivos: 
        - 001_editar_foto.feature
        - 002_editar_dados.feature
- 5° conjunto de testes a serem feitos estão na pasta: editar_perfil_usuario
    - subpasta seguranca, seguir a ordem dos arquivos: 
        - 001_alterar_senha.feature
        - 002_editar_dados.feature
        - 003_privacidade.feature
- 6° conjunto de testes a serem feitos estão na pasta: esquecer_senha_resetar
    - subpasta seguranca, seguir a ordem dos arquivos: 
        - 001_link_tela_login.feature
        - 002_pagina_redefinicao_senha_externa.feature
        - 003_pagina_redefinicao_senha_interna.feature

# Obs: Devido a falta de tempo para entregar o desafio, alguns arquivos podem estar em branco. 
# No entanto, todos os testes considerados com alta severidade foram criados


# Para o exercício 5

# Como configurar o ambiente de testes manual
- No navegador Google Chrome, pressionar as teclas, no Windows, CTRL + SHIFT + I
- Ao abrir ferramentas do desenvolvedor, pressionar, no Windows, CTRL + SHIFT + M, para alterar para o modo Mobile
- Faça os testes do arquivo cenario_celular
- Altere para o modo desktop, pressionando, no Windows, CTRL + SHIFT + M
- Faça os testes do arquivo cenario_desktop

