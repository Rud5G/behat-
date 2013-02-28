Feature: Admin can see tax rules
  In order to verify new tax rules 
  As a Admin
  I want to see tax rules

  @mink:selenium2
  Scenario: Admin can see  UK tax rules
    Given I am logged in as "admin"
    And I wait "1000" milliseconds	
    Then I am on "/index.php/admin/tax_rule/"
    And I should see "UK VAT rule"

  @mink:selenium2
  Scenario: Admin can see  EU tax rules
    Given I am logged in as "admin"
    And I wait "1000" milliseconds 
    Then I am on "/index.php/admin/tax_rule/"
    And I should see "EU VAT rule"

  @mink:selenium2
  Scenario: Admin can see  AU tax rules
   Given I am logged in as "admin"
    And I wait "1000" milliseconds 
    Then I am on "/index.php/admin/tax_rule/"
    And I should see "AU VAT rule"

  @mink:selenium2
  Scenario: Admin can see  US tax rules
    Given I am logged in as "admin"
    And I wait "1000" milliseconds 
    Then I am on "/index.php/admin/tax_rule/"
    And I should see "US VAT rule"

