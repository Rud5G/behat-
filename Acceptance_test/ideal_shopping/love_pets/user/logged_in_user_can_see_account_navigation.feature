Feature: Logged in user can see account navigation  
  As a logged in user
  I want to check my account details

  @mink:selenium2
  Scenario: Account dashboard
    Given I am on "/customer/account/login/"
	  And I fill in "email" with "xyz1@xyz1.com"
	  And I fill in "pass" with "xyz1xyz1"
	  And I press "Sign In" 
	  Then I should see "Account dashboard"
    And I should see "Account information"
    And I should see "Address book"
    And I should see "Order history"
    And I should see "My wishlist"
    And I should see "Newsletter subscription"
    And I should see "My reviews"
