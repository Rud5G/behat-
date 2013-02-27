Feature: Admin can see Geoip
  In order to setup geoip
  As a Admin
  I want to see geoip option

  @mink:selenium2
  Scenario: See geoip option
    Given I am logged in as "admin"
    And I wait "1000" milliseconds	
    And I am on "/index.php/admin/system_config/edit/section/web/"
    Then I should see "Geoip"
    And the "web_geoip_default_country" field should contain "uk"
    And the "web_geoip_country_codes" field should contain "uk http://missguided.uat.sessiondigital.com/"