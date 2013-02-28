Feature: User sees deck cards
  As a user
  In order to see my deck cards
  I can see Deck cards in my card page
  
  @mink:selenium2
  Scenario: Deck is in the person card page
    Given I am on "/Security/login/"
    When I fill in "Email" with "swetapandey@hotmail.com"
    And I fill in "Password" with "always"
    And I press "Log in" 
    And I wait "3000" milliseconds
    Then I should see "Sweta's Deck"
