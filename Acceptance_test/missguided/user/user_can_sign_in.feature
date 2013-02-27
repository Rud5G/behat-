Feature: User can sign in 
  In order to sign in
  As a user
  I want to log in to my account

  @mink:selenium2
  Scenario: User can sign with valid username and passsword 
    Given I am on "/customer/account/login/"
	And I fill in "email" with "spandey@sessiondigital.com"
	And I fill in "pass" with "sweta123"
	And I press "Login" 
	And I wait "3000" milliseconds
	Then I should see "Hello, Sweta!"

  @mink:selenium2
  Scenario: User cannot sign with invalid username and passsword 
    Given I am on "/customer/account/login/"
	And I fill in "email" with "spandey@sessiondigital.com"
	And I fill in "pass" with "xyz1xyz"
	And I press "Login" 
	And I wait "3000" milliseconds
	Then I should see "Invalid login or password."