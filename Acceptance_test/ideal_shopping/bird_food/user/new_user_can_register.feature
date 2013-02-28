Feature: New user can see register
  In order to verify that the new user can register
  As a new user
  I want to create a new account

  @mink:selenium2
  Scenario: New user can register 
    Given I am on "/customer/account/create/"
    When I fill in "firstname" with "xyz1"
	  And I fill in "lastname" with "xyz1"
	  And I fill in "email" with random email
	  And I fill in "password" with "xyz1xyz1"
	  And I fill in "confirmation" with "xyz1xyz1"
    And I press "Register" 
	  And I wait "10000" milliseconds
	  Then I should see "Hello xyz1, it’s nice to see you!"
    And I should see "Thank you for registering with Ideal Shopping Direct Limited."