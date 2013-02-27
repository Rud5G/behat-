Feature: Magento Indexes
  In order to verify magento indexes are updated correctly 
  As an Admin
  I want to check Magento Indexes

  @mink:selenium2
  Scenario: Product with stock more than 1
    Given user buy product with stock more than 1
    When admin user checks Index Management
    Then "Stock Status" should be "Red" only

  @mink:selenium2
  Scenario: Product with only 1 stock
    Given user buy product with only 1 stock
    When admin user checks Index Management
    Then every "index" should be red except "Category Flat Data"

  @mink:selenium2
  Scenario: Product Stock updated
    Given admin updates product stock 
    When admin user checks Index Management
    Then every "index" should be red except "Category Flat Data"