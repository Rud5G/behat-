Feature: Logged in user can see account navigation  
  As a logged in user
  I want to check my account details

  @mink:selenium2
  Scenario Outline: Account dashboard
    Given I am on "/customer/account/login/"
	  And I fill in "email" with "spandey@sessiondigital.com"
	  And I fill in "pass" with "sweta123"
	  And I press "Login" 
    Then I should see "<Account_details>"

    Examples:
      |Account_details          |     
      |Edit your details        |
      |Edit address book        |
      |Order History            |
      |My Wishlist              |
      |My Applications          |
      |Newsletter Subscriptions |
      |Email Notifications      |
      |Product name             |
    
