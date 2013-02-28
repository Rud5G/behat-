Feature: Admin edit homepage
  As an admin
  In order to edit homepage
  I can see homepage edit options
  
  @mink:selenium2
  Scenario Outline: Admin can edit homepage
    Given I am on "/Security/login?BackURL=%2Fadmin"
    When I fill in "Email" with "admin"
    And I fill in "Password" with "password"
    And I press "Log in" 
    And I wait "1000" milliseconds
    And I am on "/admin"
    And I follow "Page type: HomePage"
    And I wait "10000" milliseconds
    Then I should see "<Homepage>"
      
    Examples:
    |Homepage |
    |Featured |
    |Showcase |
    |Latest   |
    |Brands   |
    |Feed Tags|
    |Skins    |
    |Messages  |
