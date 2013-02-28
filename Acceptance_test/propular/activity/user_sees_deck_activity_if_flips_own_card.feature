Feature: User sees other's activity 
  As a user
  In order to see what that other users are doing
  I can see other user activity activity
  
  @mink:selenium2
  Scenario: Other user activity visible when flipped
    Given I am on "/Security/login/"
    When I fill in "Email" with "swetapandey@hotmail.com"
    And I fill in "Password" with "always"
    And I press "Log in" 
    And I wait "30000" milliseconds
    And I am on "/card/view/208#back"
    And I wait "40000" milliseconds
    Then I should see "Sweta's Deck Activity"
