Feature: Create Shopping Cart Promo per store
  In order to assign promo per store
  As a Admin
  I want to create shopping cart promo

  @mink:selenium2
  Scenario: Create Promo for AU store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds	
    Then I am on "/index.php/admin/promo_quote/"
    And I press "Add New Rule"
    And I am on "/index.php/admin/promo_quote/new/"
    And I select "Missguided AU" from "rule_website_ids"


  @mink:selenium2
  Scenario: Create Promo for EU store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    Then I am on "/index.php/admin/promo_quote/"
    And I press "Add New Rule"
    And I am on "/index.php/admin/promo_quote/new/"
    And I select "Missguided EU" from "rule_website_ids"

  @mink:selenium2
  Scenario: Create Promo for UK store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    Then I am on "/index.php/admin/promo_quote/"
    And I press "Add New Rule"
    And I am on "/index.php/admin/promo_quote/new/"
    And I select "Missguided UK" from "rule_website_ids"

  @mink:selenium2
  Scenario: Create Promo for US store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    Then I am on "/index.php/admin/promo_quote/"
    And I press "Add New Rule"
    And I am on "/index.php/admin/promo_quote/new/"
    And I select "Missguided US" from "rule_website_ids"