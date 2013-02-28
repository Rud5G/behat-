Feature: Visitor can see the categories
  In order to verify the categories
  As a visitor
  I want to check the categories .

  @mink:selenium2
  Scenario: Visitor can see the categories for birdfood website
    Given I am on "/"
    Then I should see "Wild Bird"
    And I should not see "Indoor Bird"
    And should not see "Plants"
    
  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Wild Bird
    Given I am on "/wild-bird.html"
    Then I should see "<Subcategories>"
    Examples:
      |Subcategories             |
      |Wild Bird Food            |
      |Wild Bird Feeders         |
      |Wildlife                  |
      |Wild Bird Accessories     |
      |Wild Bird Feeding Stations|
      |Nest Boxes                |                 
      |Bird Baths                |
      |Clearance                 |
      |Wild Bird Cameras         |