Feature: User can see homepage specific to his country
  In order to buy  products 
  As a user
  I want to check local home page

  @mink:selenium2
  Scenario: User in UK 
    Given I am on homepage   
    Then I should see  GBP store view
    
  @mink:selenium2
  Scenario: User in Australia
    Given I am on homepage   
    Then I should see  AUS store view
     
  @mink:selenium2
  Scenario: User in France 
    Given I am on homepage   
    Then I should see  Europe store view
   
  @mink:selenium2
  Scenario: User in USA 
    Given I am on homepage  
    Then I should see  USA store view
  
  @mink:selenium2
  Scenario: User in Singapore 
    Given I am on homepage  
    Then I should see  GBP store view