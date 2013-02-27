Feature: Admin can see Duty Thresholds
  In order to verify duty threshold are applied to correct countries
  As a Admin
  I want to see duty thresholds

  @mink:selenium2
  Scenario: Admin can see Australia Threshold
   Given I am logged in as "admin"
    And I wait "1000" milliseconds	
    Then I am on "/index.php/admin/thresholds/"
    And I should see "Australia"
    And I should see "Customers will be liable to pay duty on orders over AU$1000"

  @mink:selenium2
  Scenario: Admin can see United States Threshold
    Given I am logged in as "admin"
    And I wait "1000" milliseconds 
    Then I am on "/index.php/admin/thresholds/"
    And I should see "United States"
    And I should see "Customers will be liable to pay duty on orders over $200"