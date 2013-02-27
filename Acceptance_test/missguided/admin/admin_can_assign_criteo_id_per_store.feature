Feature:Admin can assign Criteo ID per store
  In order to assign Criteo ID per store
  As a Admin
  I want to see Criteo ID field

  @mink:selenium2
  Scenario:Assign Criteo ID for AUS Store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds	
    And I am on "/index.php/admin/system_config/edit/section/criteo/website/au/"
    Then I should see "No"
    And the "criteo_send_event_criteo_id" field should contain "7715431"
    And the "criteo_transaction_criteo_id" field should contain "7715432"
    
  @mink:selenium2
  Scenario:Assign Criteo ID for EU Store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "/index.php/admin/system_config/edit/section/criteo/website/eu/"
    Then I should see "No"
    And the "criteo_send_event_criteo_id" field should contain "7715431"
    And the "criteo_transaction_criteo_id" field should contain "7715432"

  @mink:selenium2
  Scenario:Assign Criteo ID for UK Store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "/index.php/admin/system_config/edit/section/criteo/website/base/"
    Then the "criteo_send_event_criteo_id" field should contain "7715431"
    And the "criteo_transaction_criteo_id" field should contain "7715432"

  @mink:selenium2
  Scenario:Assign Criteo ID for US Store
    Given I am logged in as "admin"
    And I wait "1000" milliseconds  
    And I am on "/index.php/admin/system_config/edit/section/criteo/website/us/"
    Then I should see "No"
    And the "criteo_send_event_criteo_id" field should contain "7715431"
    And the "criteo_transaction_criteo_id" field should contain "7715432"
