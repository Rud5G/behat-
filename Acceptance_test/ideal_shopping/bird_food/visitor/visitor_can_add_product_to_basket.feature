Feature: Visitor can add product to basket
  In order to buy the product
  As a visitor
  I want to add product to basket

  @mink:selenium2
  Scenario Outline: Add Product to basket
    Given I am on "/wild-bird/wild-bird-food/premium-wild-bird-seed-12-75kg.html"
    And I press "Add to Cart"
    And I wait "3000" milliseconds
    Then I should see "<Cart_details>"

    Examples:
      |Cart_details														                         |     
      |My Basket 															                         |
      |Premium Wild Bird Seed 12.75KG was added to your shopping basket|
      |Product code: 400001				                     					  		 |
      

