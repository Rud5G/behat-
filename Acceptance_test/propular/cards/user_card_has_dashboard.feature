Feature: User sees Dashboard
  As a user
  In order to edit my information
  I can see dashboard in my card page
  
  @mink:selenium2
  Scenario: Dashboard is in the person card page
    Given I am on "/Security/login/"
    When I fill in "Email" with "swetapandey@hotmail.com"
    And I fill in "Password" with "always"
    And I press "Log in" 
    And I wait "1000" milliseconds
    Then I should see "Dashboard"
    
   

