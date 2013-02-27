Feature:Create static block per store
  In order to assign static block per store
  As a Admin
  I want to create static block

  @mink:selenium2
  Scenario: Create static block for AU store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds	
    Then I am on "/index.php/admin/cms_block/"
    And I press "Add New Block"
    And I am on "/index.php/admin/cms_block/new/"
    And I select "Australian (AU)" from "block_store_id"


  @mink:selenium2
  Scenario: Create static block for EU store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    Then I am on "/index.php/admin/cms_block/"
    And I press "Add New Block"
    And I am on "/index.php/admin/cms_block/new/"
    And I select "European (EU)" from "block_store_id"

  @mink:selenium2
  Scenario: Create static block for UK store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    Then I am on "/index.php/admin/cms_block/"
    And I press "Add New Block"
    And I am on "/index.php/admin/cms_block/new/"
    And I select "English (UK)" from "block_store_id"

  @mink:selenium2
  Scenario: Create static block for US store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    Then I am on "/index.php/admin/cms_block/"
    And I press "Add New Block"
    And I am on "/index.php/admin/cms_block/new/"
    And I select "American (US)" from "block_store_id"