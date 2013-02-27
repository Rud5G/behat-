Feature: Admin can see Google API Account Number 
  In order to verify Google API Account Number in all stores
  As a Admin
  I want to see Google API Account Number 

  @mink:selenium2
  Scenario:Google API Account Number in UK Store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "//index.php/admin/system_config/edit/section/google/website/base/"
    Then the "google_analytics_account" field should contain "UA-7828964-1"
    

  @mink:selenium2
  Scenario:Google API Account Number in AUS Store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds	
    And I am on "/index.php/admin/system_config/edit/section/google/website/au/store/au_en/"
    Then the "google_analytics_account" field should contain "UA-7828964-5"
    
  @mink:selenium2
  Scenario:Google API Account Number in EU Store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "/index.php/admin/system_config/edit/section/google/website/eu/"
    Then the "google_analytics_account" field should contain "UA-7828964-3"
    
  @mink:selenium2
  Scenario:Google API Account Number in US Store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "/index.php/admin/system_config/edit/section/google/website/us/"
    Then the "google_analytics_account" field should contain "UA-7828964-4"
    