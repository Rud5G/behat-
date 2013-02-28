Feature: Admin login
In order to verify admin can login  
As a Admin
I want to login and make changes as required.

  @mink:selenium2
  Scenario: Admin can login if correct username and password is  provided.
    Given I am on "/admin"
    When I fill in "login[username]" with "admin"
    And I fill in "login[password]" with "123123pass"
    And I press "Login" 
    And I wait "10000" milliseconds
    Then I should see "Logged in as admin"

  @mink:selenium2
  Scenario: Admin cannot login if incorrect username and  correct password is provided.
    Given I am on "/admin"
    When I fill in "login[username]" with "administrator"
    And I fill in "login[password]" with "123123pass"
    And I press "Login" 	
    And I wait "10000" milliseconds
    Then I should see "Invalid Username or Password"

  @mink:selenium2
  Scenario: Admin cannot login if correct username and  incorrect password is provided.
    Given I am on "/admin"
    When I fill in "login[username]" with "admin"	
    And I fill in "login[password]" with "123pass"
    And I press "Login" 
    And I wait "10000" milliseconds
    Then I should see "Invalid Username or Password"
