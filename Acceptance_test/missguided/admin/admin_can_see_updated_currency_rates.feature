Feature:Admin can see updated currency rates
  In order to use recent currency rates
  As a Admin
  I want to see updated currency rates

  @mink:selenium2
  Scenario:Updated rate for AUS Dollar
    Given I am logged in as "admin"
    And I wait "1000" milliseconds	
    And I am on "//index.php/admin/system_currency/"
    Then the "rate[GBP][AUD]" field should contain "1.6627"

  @mink:selenium2
  Scenario:Updated rate for DKK
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "//index.php/admin/system_currency/"
    Then the "rate[GBP][DKK]" field should contain "9.4352"
    
  @mink:selenium2
  Scenario:Updated rate for Euro
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "//index.php/admin/system_currency/"
    Then the "rate[GBP][EUR]" field should contain "1.2647"

  @mink:selenium2
  Scenario:GBP rate not changed
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "//index.php/admin/system_currency/"
    Then the "rate[GBP][GBP]" field should contain "1.0000"

  @mink:selenium2
  Scenario:Updated rate for NOK
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "//index.php/admin/system_currency/"
    Then the "rate[GBP][NOK]" field should contain "9.4126"

  @mink:selenium2
  Scenario:Updated rate for SEK
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "//index.php/admin/system_currency/"
    Then the "rate[GBP][SEK]" field should contain "10.8922"

  @mink:selenium2
  Scenario:Updated rate for US Dollar
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "//index.php/admin/system_currency/"
    Then the "rate[GBP][USD]" field should contain "1.7314"