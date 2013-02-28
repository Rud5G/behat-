Feature: User sees person activity
  As a user
  In order to see what that person is doing
  I can see the person activity
  
  @mink:selenium2
  Scenario: Person activity visible when flipped
    Given I am on "/Security/login/"
    When I fill in "Email" with "swetapandey@hotmail.com"
    And I fill in "Password" with "always"
    And I press "Log in" 
    And I wait "3000" milliseconds
    And I am on "/card/view/212#back"
    And I wait "4500" milliseconds
    Then I should see "Bibek's Activity"

