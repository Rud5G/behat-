Feature: User can switch to allow changing to any store view
  In order to switch  between diffent store view
  As a user
  I want to change to any store view

  @mink:selenium2
  Scenario: User in UK 
    Given I am on homepage   
    And  I should see  GBP store view
    And I should see price in pound
    Then I should be able to switch to Europe store view
    And I should see  price in euro
    
  @mink:selenium2
  Scenario: User in FRANCE 
    Given I am on homepage   
    And  I should see  europe store view
    And I should see price in euro
    Then I should be able to switch to UK store view
    And I should see  price in pound
    