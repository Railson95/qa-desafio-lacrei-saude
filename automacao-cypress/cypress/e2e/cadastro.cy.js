describe('Cypress Playground', () => {
  beforeEach(() => {
    cy.visit('https://cypress-playground.s3.eu-central-1.amazonaws.com/index.html')
  }) 

  it('shows a promotional banner', () => {
    cy.get('#promotional-banner')
      .should('be.visible')
  })

  it('shows what happens when click the subscribe button', () => {
    cy.contains('button', 'Subscribe')
      .should('be.visible')
      .click()

    cy.contains(
      '#success', 
      "You've been successfully subscribed to our newsletter."
      ).should('be.visible')
  })

  it('inserts the signature in a input and asserts it is signed',() => {
    cy.get('#signature-textarea').type('Railson')

    cy.contains('#signature', 'Railson').should('be.visible')
  })

  it('inserts the signature in a input and select a checkbox and assert it is signed, then uncheck it ',() => {
    cy.get('#signature-textarea-with-checkbox').type('Railson')
    cy.get('#signature-checkbox').check()
    cy.contains('#signature-triggered-by-check', 'Railson').should('be.visible')
    cy.get('#signature-checkbox').uncheck()
    cy.contains('#signature-triggered-by-check', 'Railson').should('not.exist')
  })
  
  it('Turn the radio button on/off and check if the correct text appears', () => {
    cy.contains('#on-off', 'ON').should('be.visible')

    cy.get('#off').check()

    cy.contains('#on-off', 'OFF').should('be.visible')
    cy.contains('#on-off', 'ON').should('not.exist')

    cy.get('#on').check()

    cy.contains('#on-off', 'ON').should('be.visible')
    cy.contains('#on-off', 'OFF').should('not.exist')

  })

  it('selects a field in dropdown and checks if the correct type is shown', () => {
    cy.contains('#selection-type').should('not.exist')
    cy.contains('#select-selection > strong').should('not.exist')

    cy.get('#selection-type').select('Basic')
    cy.contains('#select-selection > strong', 'BASIC').should('be.visible')
  })

  it('select multiple options and then check if they are correct', () => {
    const fruits = ['Apple', 'Banana', 'Cherry', 'Date', 'Elderberry']

    cy.contains('#fruits-paragraph', "You haven't selected any fruit yet.")
    .should('be.visible')
    
    cy.get('#fruit').select(fruits)
    
    const lowerCaseFruits = fruits.map(fruit => fruit.toLowerCase()) 
    
    cy.contains('#fruits-paragraph', "You've selected the following fruits: " + lowerCaseFruits.join(', '))
    .should('be.visible')
  })

  it.only('upload a file and check the correct file name is displayed', () => {
    cy.get('#file-upload').should('be.visible')

    cy.get('#file-upload').selectFile('./cypress/fixtures/example.json')
    cy.contains(
      '#file', 
      'The following file has been selected for upload: example.json'
    ).should('be.visible')
  })
})