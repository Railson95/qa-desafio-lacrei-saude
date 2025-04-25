# BUG-001
- Esse bug foi encontrado com base em testes exploratórios
- Descrição detalhada
    - Ao editar os dados do paciente, e informar uma data para que o paciente seja <= 18 anos, um erro ocorre, e nenhuma mensagem de erro é mostrada;

- Passos para reprodução
    1) Estar na página de informações pessoais;
    2) Selecionar o botão "Editar Dados";
    3) Informar uma data para que o paciente seja <= 18 anos

- Impacto no sistema e prioridade de correção
    - Impacto no sistema: Baixo
    - Prioridade de correção: Baixa

- melhorias com base nos resultados dos testes
    - Implementar uma lógica para mostrar uma mensagem de erro ao paciente, caso ele insira uma data inválida;

# BUG-002
- Esse bug foi encontrado com base em testes exploratórios
- Descrição detalhada
    - Ao inserir uma nova foto e descricao, e sair para a tela de Login e entrar novamente, a descrição e a foto somem;

- Passos para reprodução
    1) Estar na página de informações pessoais;
    2) Selecionar o botão "Editar foto";
    3) Inserir uma novo foto e descrição;
    4) Sair da aplicação;
    5) Entrar novamente;
    6) Ir até a página de informações pessoais.

- Impacto no sistema e prioridade de correção
    - Impacto no sistema: Baixo
    - Prioridade de correção: Baixa

- melhorias com base nos resultados dos testes
    - Regarregar a página toda vez que o usuário acessar as informações pessoais;

# BUG-003
- Bug referente ao [CT-023] [ID-005]
- Descrição detalhada
    -  Ao contatar profissional e inserir um número de telefone inválido, nenhuma mensagem de erro e mostrada;

- Passos para reprodução
    1) Estar no perfil de um profissional
    2) Selecionar o botão "Exibir contato"
    3) Inserir um número de telefone inválido, por exemplo: (35) 8 9998-9898
    4) Selecionar o botão "Enviar código"

- Impacto no sistema e prioridade de correção
    - Impacto no sistema: Médio
    - Prioridade de correção: Média

- melhorias com base nos resultados dos testes
    - Informar ao usuário com uma mensagem de erro que o telefone não é válido


# BUG-004
- Esse bug foi encontrado com base em testes exploratórios
- Descrição detalhada
    - Ao editar os dados do usuário, colocando uma data inválida e deslogar o sistema volta para a tela de Pós Cadastro;
    - Além disso, a descrição da foto é apagada
    
- Passos para reprodução
    1) Estar na página de informações pessoais;
    2) Selecionar o botão "Editar Dados";
    3) Informar a data de hoje e clicar em salvar 10 vezes seguidas;
    4) Sair da aplicação;
    5) Entrar novamente; 

- Impacto no sistema e prioridade de correção
    - Impacto no sistema: Alto
    - Prioridade de correção: Alto

- melhorias com base nos resultados dos testes
    - Tratar o erro ao se colocar uma data inválida;

# BUG-005
- Esse bug foi encontrado com base em testes exploratórios
- Descrição detalhada
    - Paciente conseguindo navegar pelas telas de Pós Cadastro, mesmo sem marcar uma opção desejada, via menu enumerado de 1 a 5.
    - No entanto, ao clicar no botão "Voltar" a operação não é permitida

- Passos para reprodução
    1) Na tela de Pós Cadastro, via menu enumerado de 1 a 5;
    2) Selecionar qualquer item sem marcar nenhuma opção, por exemplo: etnia etc;


- Impacto no sistema e prioridade de correção
    - Impacto no sistema: Baixo
    - Prioridade de correção: Baixa

- melhorias com base nos resultados dos testes
    - Impedir que o paciente navegue no Menu sem antes marcar alguma opção

# BUG-006
- Bug referente ao [CT-035]
- Descrição detalhada
    - Na aba de segurança, ao selecionar o botão “Alterar senha” e inserir no campo “Senha atual” uma senha diferente da já cadastrada no sistema, não está
    - alertando ao paciente com uma mensagem de erro que aquela senha não é a correta. Além disso, o sistema redireciona o paciente para a tela de login

- Passos para reprodução
    1) Estar na aba de segurança;
    2) Clicar no botão "Alterar senha";
    3) Inserir no campo "Senha atual" uma senha diferente da atual;
    4) Nos outros campos inserir os dados corretos;
    5) Clicar no botão "Salvar senha".

- Impacto no sistema e prioridade de correção
    - Impacto no sistema: Alto
    - Prioridade de correção: Alta

- melhorias com base nos resultados dos testes
    - Informar o paciente com uma mensagem de erro que a senha está incorreta e não redirecionar o usuário para tela de Login