Feature: Visitor can see homepage
  In order to see different option in homepage
  As a visitor
  I want to check the home page

  @mink:selenium2
  Scenario Outline: Homepage options
    Given I am on "/"   
    Then I should see "<Homepage_Details>"
    

    Examples:
      |Homepage_Details|
      |Cookies         |
      |Register        |
      |Log In          |
      |Wishlist        |
      |Bag             |
    