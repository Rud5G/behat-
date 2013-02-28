Feature: Visitor can see homepage
  In order to see different option in homepage
  As a visitor
  I want to check the home page

  @mink:selenium2
  Scenario Outline: Homepage options
    Given I am on "/"   
    Then I should see "<Homepage_Details>"
    

    Examples:
      |Homepage_Details              |
      |Welcome to Ideal Shopping     |
      |Log In or Register            |
      |My Wishlist                   |
      |Sign In                       |
      |View Basket & Checkout        |
      |Delivery                      |
      |Returns                       |
      |Contact us                    |
      |Search                        |
      |New Products                  |
      |Featured Products             |