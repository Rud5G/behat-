Feature: User can see local currency
  In order to buy  products in my local currency
  As a user
  I want to buy product

  @mink:selenium2
  Scenario: User in UK 
    Given I am on homepage   
    Then I should see price in pound
    
  @mink:selenium2
  Scenario: User in Australia
    Given I am on homepage   
    And I should see price in australian dollar 

  @mink:selenium2
  Scenario: User in France 
    Given I am on homepage   
    Then I should see price in euro

  @mink:selenium2
  Scenario: User in USA 
    Given I am on homepage  
    Then I should see price in american dollar

  @mink:selenium2
  Scenario: User in Singapore 
    Given I am on homepage  
    Then I should see price in pound 