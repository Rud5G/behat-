Feature: Visitor can add product to basket
  In order to buy the product
  As a visitor
  I want to add product to basket

  @mink:selenium2
  Scenario Outline: Add Product to basket
    Given I am on "/wildlife-wildbird/wild-bird-feeders-feeding-stations/love-wildlife-feeding-station-pack.html"
    And I press "Add to Cart"
    And I wait "3000" milliseconds
    Then I should see "<Cart_details>"

    Examples:
      |Cart_details														  |     
      |My Basket 															  |
      |Love Wildlife Feeding Station Pack was added to your shopping Basket.|
      |Product code: 410841				                     										  |
      

