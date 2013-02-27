Feature:Create CMS page per store
  In order to assign cms page per store
  As a Admin
  I want to create cms page

  @mink:selenium2
  Scenario: Create CMS page for AU store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds	
    Then I am on "/index.php/admin/cms_page/"
    And I press "Add New Page"
    And I am on "/index.php/admin/cms_page/new/"
    And I select "Australian (AU)" from "page_store_id"


  @mink:selenium2
  Scenario: Create CMS page for EU store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    Then I am on "/index.php/admin/cms_page/"
    And I press "Add New Page"
    And I am on "/index.php/admin/cms_page/new/"
    And I select "European (EU)" from "page_store_id"

  @mink:selenium2
  Scenario: Create CMS page for UK store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    Then I am on "/index.php/admin/cms_page/"
    And I press "Add New Page"
    And I am on "/index.php/admin/cms_page/new/"
    And I select "English (UK)" from "page_store_id"

  @mink:selenium2
  Scenario: Create CMS page for US store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
   Then I am on "/index.php/admin/cms_page/"
    And I press "Add New Page"
    And I am on "/index.php/admin/cms_page/new/"
    And I select "American (US)" from "page_store_id"