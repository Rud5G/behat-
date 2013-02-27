Feature: Logged in user can switch between stores and still have same items in the basket 
  In order to check different stores and still have same items in the basket 
  As a logged in user 
  I want to switch between stores 

  @mink:selenium2
  Scenario Outline: Products in basket which is available in all stores 
    Given I am on homepage of "<Store>" 
    And I have added products in basket which is available in all stores 
    When I switch to "< Another Store>" 
    Then I should not be logged in 
     And I should still see the products that I have added in my basket 

  
  @mink:selenium2
  Scenario Outline: No Product in basket 
    Given I am on homepage of "<Store>" 
    And I have not added any products in basket 
    When I switch to "< Another Store>" 
    Then I should not be logged in 
    And I should see empty basket 

  @mink:selenium2
  Scenario Outline: Products in basket which are not available in other stores 
    Given I am on homepage of "<Store>" 
    And I have added products in basket which are not available in other stores 
    When I switch to "< Another Store>" 
    Then I should not be logged in 
    And I should see only those product in basket which are available in that store 

 
  @mink:selenium2
  Scenario Outline: User switches to store which he was initially logged in 
    Given I am on homepage of "<Store>" 
    And I have added products in basket which is available in all stores 
    When I switch to "< Another Store>" where I was initially logged in 
    Then I should be logged in 
    And I should still see the products that I have added in my basket 

Examples: 
|Store | Another Store | 
|UK    | EU/AU/US      | 
|US    | EU/AU/UK      | 
|EU    | UK/AU/US      | 
|AU    | EU/UK/US      | 
