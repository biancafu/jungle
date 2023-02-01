

describe('Product test', () => {
  beforeEach(() => {

    cy.visit("/");
    cy.contains("Jungle");
  });

  it("Able to view detail page", () => {
    cy.contains("Scented Blade")
      .first()
      .click();

    cy.get(".main-img");
    cy.contains("The Scented Blade is an extremely rare");
    cy.get(".quantity");
    cy.contains("18");
    cy.get(".price");
    cy.contains("$24.99");

  });

  it("Able to view detail page and add product to cart", () => {
    cy.contains("Scented Blade")
      .first()
      .click();

    cy.get(".main-img");

    cy.contains("My Cart (0)");

    cy.contains("Add")
      .click();
    
    cy.contains("My Cart (0)").should("not.exist");
    cy.contains("My Cart (1)").should("exist");

  });


  
})