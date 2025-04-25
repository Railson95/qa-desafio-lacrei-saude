Feature: Edição de foto no perfil do paciente
  Como usuário do App,
  Quero poder editar minha foto de perfil,
  Para que eu possa atualizar minha imagem e descrição.

    Background:
        Given que o paciente esteja na aba de informações pessoais
        When o paciente selecionar o botão "Editar foto"

    Scenario: Visualizar área de edição de foto
        Then a área de edição de foto deve ser exibida

    Scenario Outline: Escolher foto do armazenamento ou tirar foto pela câmera
        Given que o paciente esteja na área de edição de foto
        When o paciente optar por <opcao> para escolher a foto
        Then <resultado> deve ser aberta

        Examples:
        | opcao                          | resultado                        |
        | escolher foto do armazenamento | galeria de fotos do dispositivo  |
        | tirar foto pela câmera         | a câmera do dispositivo          |

    Scenario Outline: Verificar campo obrigatório para descrição da foto
        Given que o paciente esteja na área de edição de foto
        When o paciente não preencher o campo de descrição da foto
        Then uma mensagem de erro "Descrição da foto é obrigatória" deve ser exibida

    Scenario Outline: Salvar foto e descrição válidas
        Given que o paciente tenha escolhido uma foto e inserido uma descrição válida
        When o paciente selecionar o botão "Salvar"
        Then o paciente deve ser redirecionado para a aba de informações pessoais
        And a foto escolhida e a descrição inserida devem ser exibidas na aba de informações pessoais
