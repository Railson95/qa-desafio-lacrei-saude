import { faker } from '@faker-js/faker';


describe('Cypress Playground', () => {
  beforeEach(() => {
    cy.visit('https://paciente-staging.lacreisaude.com.br/cadastro/')
  }) 
  
  it('Inserir dados válidos em todos os campos do formulário e enviar', () => {
    let email = faker.internet.email();
    cy.get('#first_name').type('Railson');
    cy.get('#last_name').type('Martins da Mata');
    cy.get('#email').type(email);
    cy.get('#email2').type(email);
    cy.get('#password1').type('Martins(01)'); // TODO: Esconder essa senha por segurança
    cy.get('#password2').type('Martins(01)'); // TODO: Esconder essa senha por segurança
    cy.get('input[name="accepted_privacy_document"]').check({ force: true });
    cy.get('input[name="is_18_years_old_or_more"]').check({ force: true });

    cy.contains('button', 'Cadastrar').click();

    cy.contains('button', 'Voltar ao login').should('be.visible');
  })

  it('Tentar enviar o formulário com todos os campos em branco', () => {
    cy.get('#first_name').clear();
    cy.get('#last_name').clear();
    cy.get('#email').clear();
    cy.get('#email2').clear();
    cy.get('#password1').clear(); // TODO: Esconder essa senha por segurança
    cy.get('#password2').clear(); // TODO: Esconder essa senha por segurança
    cy.get('input[name="accepted_privacy_document"]').uncheck({ force: true });
    cy.get('input[name="is_18_years_old_or_more"]').uncheck({ force: true });


    cy.contains('button', 'Cadastrar').click();

    cy.contains('p', 'O nome é obrigatório.').should('be.visible');
    cy.contains('p', 'O sobrenome é obrigatório.').should('be.visible');
    cy.contains('p', 'O e-mail é obrigatório.').should('be.visible');
    cy.contains('p', 'A senha é obrigatória.').should('be.visible');
    cy.contains('p', 'A confirmação da senha é obrigatória.').should('be.visible');
    cy.contains('p', 'Você deve aceitar os termos.').should('be.visible');
    cy.contains('p', 'Você deve ter 18 anos ou mais.').should('be.visible');
  })

  it('Inserir dados inválidos nos campos do formulário e enviar', () => {
    let senhaTeste1 = {
      number: '1',
      errorMessage: 'A senha deve ter no mínimo 8 caracteres'
    }
  
    let senhaTeste2 = {
      number: '12345678',
      errorMessage: 'A senha deve conter pelo menos uma letra maiúscula'
    }
  
    let senhaTeste3 = {
      number: '12345678A',
      errorMessage: 'A senha deve conter pelo menos uma letra minúscula'
    }
  
    let senhaTeste4 = {
      number: '12345678Aa',
      errorMessage: 'A senha deve conter pelo menos um caractere especial (#!*-_&)'
    }
  
    let senhaTeste5 = {
      number: 'abcdefghA',
      errorMessage: 'A senha deve conter pelo menos um número'
    }
  
    let massaDeTesteSenhas = [senhaTeste1, senhaTeste2, senhaTeste3, senhaTeste4, senhaTeste5]


    massaDeTesteSenhas.forEach((senha, index) => {
      cy.get('#first_name').clear();
      cy.get('#last_name').clear();
      cy.get('#email').clear();
      cy.get('#email2').clear();
      cy.get('#password1').clear(); // TODO: Esconder essa senha por segurança
      cy.get('#password2').clear(); // TODO: Esconder essa senha por segurança


      cy.get('#first_name').type('123test');
      cy.get('#last_name').type('125test');
      cy.get('#email').type('123@123');
      cy.get('#email2').type('123@123');
      cy.get('#password1').type(senha.number); // TODO: Esconder essa senha por segurança
      cy.get('#password2').type('151'); // TODO: Esconder essa senha por segurança
      cy.get('input[name="accepted_privacy_document"]').uncheck({ force: true });
      cy.get('input[name="is_18_years_old_or_more"]').uncheck({ force: true });

      cy.contains('button', 'Cadastrar').click();

      cy.contains('p', 'Digite um nome válido').should('be.visible');
      cy.contains('p', 'Digite um sobrenome válido').should('be.visible');
      cy.contains('p', 'Insira um e-mail válido').should('be.visible');
      cy.contains('p', senha.errorMessage).should('be.visible');
      // cy.contains('p', '').should('not.exist');
      cy.contains('p', 'Você deve aceitar os termos.').should('be.visible');
      cy.contains('p', 'Você deve ter 18 anos ou mais.').should('be.visible');
    });
  })

  it('Inserir e-mails válidos diferentes nos campos de e-mail e confirmar e-mail e enviar o formulário', () => {
    let email1 = faker.internet.email();
    let email2 = faker.internet.email();
    cy.get('#first_name').type('Railson');
    cy.get('#last_name').type('Martins da Mata');
    cy.get('#email').type(email1);
    cy.get('#email2').type(email2);
    cy.get('#password1').type('Martins(01)'); // TODO: Esconder essa senha por segurança
    cy.get('#password2').type('Martins(01)'); // TODO: Esconder essa senha por segurança
    cy.get('input[name="accepted_privacy_document"]').check({ force: true });
    cy.get('input[name="is_18_years_old_or_more"]').check({ force: true });

    cy.contains('button', 'Cadastrar').click();

    cy.contains('p', 'Os e-mails não correspondem, digite novamente.').should('be.visible');
  })

  it('Inserir senhas válidas diferentes nos campos de senha e confirmar senha e enviar o formulário', () => {
    let email1 = faker.internet.email();
    cy.get('#first_name').type('Railson');
    cy.get('#last_name').type('Martins da Mata');
    cy.get('#email').type(email1);
    cy.get('#email2').type(email1);
    cy.get('#password1').type('Martins(01)'); // TODO: Esconder essa senha por segurança
    cy.get('#password2').type('Martins(02)'); // TODO: Esconder essa senha por segurança
    cy.get('input[name="accepted_privacy_document"]').check({ force: true });
    cy.get('input[name="is_18_years_old_or_more"]').check({ force: true });

    cy.contains('button', 'Cadastrar').click();

    cy.contains('p', 'Senhas incompatíveis, tente novamente.').should('be.visible');
  })
  
})