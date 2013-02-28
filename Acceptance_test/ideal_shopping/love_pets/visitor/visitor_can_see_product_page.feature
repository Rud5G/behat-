Feature: Visitor can see product page
  In order to see different option in product  page
  As a visitor
  I want to check the product  page

  @mink:selenium2
  Scenario:Title of the product
    Given I am on "/wildlife-wildbird/wild-bird-food/premium-wild-bird-seed-12-75kg.html"
    Then I should see "Premium Wild Bird Seed 12.75KG"


  @mink:selenium2
  Scenario: Description of the product
    Given I am on "/wildlife-wildbird/wild-bird-food/premium-wild-bird-seed-12-75kg.html"
    Then I should see "A great multi-purpose wild bird food that offers brilliant value for money."
   

  @mink:selenium2
  Scenario Outline: Review Section
    Given I am on "/wildlife-wildbird/wild-bird-food/premium-wild-bird-seed-12-75kg.html"   
    Then I should see "<Review_Section_Details>"
    

    Examples:
      |Review_Section_Details                    |
      |Review this item                          |
      |Name                                      |
      |Overall                                   |
      |Quality                                   |
      |Value for money                           |
      |Review Title                              |
      |Review Body                               |
      |Customer Reviews                          |