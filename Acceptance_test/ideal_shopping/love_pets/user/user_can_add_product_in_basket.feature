Feature: User can add product in basket
  In order to buy that product
  As a user
  I want to add product to basket

  @mink:selenium2
  Scenario Outline: User can add product from category page
    Given I am on "/wildlife-wildbird/wild-bird-food.html"
    When I press "Add to Basket"
	  And I wait "3000" milliseconds
    Then I should see "<Basket_details>"

    Examples:
      |Basket_details                                                   |     
      |My Basket                                                        |
      |Premium Wild Bird Seed 12.75KG was added to your shopping basket.|
      |Premium Wild Bird Seed 12.75KG                                   |
      |Product code: 400001                                             |
      |We also recommend                                                |
      |Discount code                                                    |
      |Continue Shopping                                                |
      |Update Quantity                                                  |
      |Proceed to Checkout                                              |
      |Product name                                                     |
      |Edit                                                             |
      |Remove                                                           |
      |Qty                                                              |
      |Was                                                              |
      |Now                                                              |
      |You pay                                                          |