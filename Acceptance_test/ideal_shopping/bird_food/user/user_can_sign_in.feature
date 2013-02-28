Feature: User can sign in 
  In order to sign in
  As a user
  I want to log in to my account

  @mink:selenium2
  Scenario: User can sign with valid username and passsword 
    Given I am on "/customer/account/login/"
	And I fill in "email" with "xyz1@xyz1.com"
	And I fill in "pass" with "xyz1xyz1"
	And I press "Sign In" 
	And I wait "10000" milliseconds
	Then I should see "Hello xyz1, it’s nice to see you!"

  @mink:selenium2
  Scenario: User cannot sign with invalid username and passsword 
    Given I am on "/customer/account/login/"
	And I fill in "email" with "xyz1@123.com"
	And I fill in "pass" with "xyz1xyz"
	And I press "Sign In" 
	And I wait "10000" milliseconds
	Then I should see "Invalid login or password"

	