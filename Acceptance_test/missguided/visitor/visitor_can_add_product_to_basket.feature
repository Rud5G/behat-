Feature: Visitor can add product to basket
  In order to buy the product
  As a visitor
  I want to add product to basket

  @mink:selenium2
  Scenario Outline: User can add product from category page
    Given I am on "/studded-cut-out-bodycon-dress"
    When I press "Add to Bag"
    And I wait "1000" milliseconds
    And I am on "/checkout/cart/?___SID=U"
    Then I should see "<Basket_details>"

    Examples:
      |Basket_details                |     
      |YOUR BAG                      |
      |ITEM DESCRIPTION              |
      |SIZE & QUANTITY               |
      |Studded Cut Out Bodycon Dress |
      |PRICE                         |
      |SUBTOTAL                      |
      |ORDER TOTAL                   |
      |CHECKOUT NOW                  |
