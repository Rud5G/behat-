Feature: Admin can see option to create Duty Thresholds
  In order to assign duty threshold to correct countries
  As a Admin
  I want to create duty thresholds

  @mink:selenium2
  Scenario: Create Threshold
    Given I am logged in as "admin"
    And I wait "1000" milliseconds	
    Then I am on "/index.php/admin/thresholds/"
    And I press "Add threshold"
    And I am on "/index.php/admin/thresholds/new/"
    And I should see "New Threshold"
