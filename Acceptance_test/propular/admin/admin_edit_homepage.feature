
Feature: Admin edit homepage
  As an admin
  In order to edit homepage
  I can see homepage edit options
  
  @mink:selenium2
  Scenario: Admin can edit homepage
    Given I am on "/Security/login?BackURL=%2Fadmin"
	  When I fill in "Email" with "admin"
	  When I fill in "Password" with "password"
	  When I press "Log in" 
	  And I wait "10000" milliseconds
	  And I am on "/admin"
      And I follow "Page type: HomePage"
      And I wait "10000" milliseconds
      Then I should see "Featured"
      Then I should see "Showcase"
      Then I should see "Latest"
      Then I should see "Brands"
      Then I should see "Feed Tags"
      Then I should see "Skins"
      Then I should see "Messages"

