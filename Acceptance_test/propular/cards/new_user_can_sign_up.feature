Feature: New user can sign up
  As a new user
  In order to create a new account
  I can see my card after I create a new account
  
  @mink:selenium2
  Scenario: New user can sign up
    Given I am on "/create-your-card/"
    When I fill in "first_name" with "testxyz"
    And I fill in "last_name" with "testxyz"
    And I fill in "date_of_birth" with "02/02/2012"
    And I fill in "email" with "testxyz@hotmail.com"
    And I fill in "password" with "testxyz"
    And I fill in "password_confirm" with "testxyz"
    And I fill in "about_you" with "Love Photography"
    And I fill in "tag4" with "photography"
    And I fill in "password" with "testxyz"
    And I check "tc"
    And I press "Create my card"
    And I wait "2000" milliseconds
    Then I should see "Next"
