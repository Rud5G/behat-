Feature: User sees deck cards
  As a user
  In order to see my deck cards
  I can see Deck cards in my card page
  
  @mink:selenium2
  Scenario: Deck is in the person card page
    Given I am on "/Security/login/"
	  When I fill in "Email" with "swetapandey@hotmail.com"
	  When I fill in "Password" with "always"
	  When I press "Log in" 
	  And I wait "30000" milliseconds
    Then I should see "Sweta's Deck"
