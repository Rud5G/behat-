Feature: Admin can see tax rules
  In order to verify new tax rules 
  As a Admin
  I want to see tax rules

  @mink:selenium2
  Scenario: Admin can see  UK tax rules
    Given I am on "/admin" 
    #Opening Magento Admin Panel
	  When I fill in "login[username]" with "admin"
	  And I fill in "login[password]" with "123123pass"
	  And I press "Login" 
    And I wait "10000" milliseconds	
    Then I am on "/index.php/admin/tax_rule/"
    And I should see "UK VAT rule"

  @mink:selenium2
  Scenario: Admin can see  EU tax rules
    Given I am on "/admin" 
    #Opening Magento Admin Panel
    When I fill in "login[username]" with "admin"
    And I fill in "login[password]" with "123123pass"
    And I press "Login" 
    And I wait "10000" milliseconds 
    Then I am on "/index.php/admin/tax_rule/"
    And I should see "EU VAT rule"

  @mink:selenium2
  Scenario: Admin can see  AU tax rules
    Given I am on "/admin" 
    #Opening Magento Admin Panel
    When I fill in "login[username]" with "admin"
    And I fill in "login[password]" with "123123pass"
    And I press "Login" 
    And I wait "10000" milliseconds 
    Then I am on "/index.php/admin/tax_rule/"
    And I should see "AU VAT rule"

  @mink:selenium2
  Scenario: Admin can see  US tax rules
    Given I am on "/admin" 
    #Opening Magento Admin Panel
    When I fill in "login[username]" with "admin"
    And I fill in "login[password]" with "123123pass"
    And I press "Login" 
    And I wait "10000" milliseconds 
    Then I am on "/index.php/admin/tax_rule/"
    And I should see "US VAT rule"

