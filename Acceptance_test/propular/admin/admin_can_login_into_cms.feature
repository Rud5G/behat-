Feature: Admin log in into cms
  As an admin
  In order to edit propular website
  I can see cms silverstripe
  
  @mink:selenium2
  Scenario: Admin can log in into cms
    Given I am on "/Security/login?BackURL=%2Fadmin"
   When I fill in "Email" with "admin"
   And I fill in "Password" with "password"
   And I press "Log in" 
    And I wait "1000" milliseconds
    Then I am on "/admin"
    And I should see "SilverStripe" 
