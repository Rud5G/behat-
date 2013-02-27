Feature: Admin can see Postcode Anywhere Api Key
  In order to verify Postcode Anywhere Api Key
  As a Admin
  I want to see Postcode Anywhere Api Key

  @mink:selenium2
  Scenario:Postcode Anywhere Api Key in UK Store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "/index.php/admin/system_config/edit/section/missguided_postcodeanywhere/website/base/"
    Then the "missguided_postcodeanywhere_config_api_key" field should contain "UX19-GK69-AX98-FT67"
    

  @mink:selenium2
  Scenario:Postcode Anywhere Api Key in AUS Store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds	
    And I am on "/index.php/admin/system_config/edit/section/missguided_postcodeanywhere/website/au/"
    Then the "missguided_postcodeanywhere_config_api_key" field should contain "UX19-GK69-AX98-FT67"
    
  @mink:selenium2
  Scenario:Postcode Anywhere Api Key in EU Store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "/index.php/admin/system_config/edit/section/missguided_postcodeanywhere/website/eu/"
    Then the "missguided_postcodeanywhere_config_api_key" field should contain "UX19-GK69-AX98-FT67"
    
  @mink:selenium2
  Scenario:Postcode Anywhere Api Key in US Store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "/index.php/admin/system_config/edit/section/missguided_postcodeanywhere/website/us/"
    Then the "missguided_postcodeanywhere_config_api_key" field should contain "UX19-GK69-AX98-FT67"
    