Feature: Visitor can see refine by options in category page
  In order to see product that I want.
  As a visitor
  I want to see options to refine product .

  @mink:selenium2
  Scenario Outline: Refine by options in New In
    Given I am on "/new-in"
    Then I should see "<Refine by Options>"

    Examples:
      |Refine by Options|
      |REFINE BY        |
      |CATEGORY         |
      |COLOUR           |
      |CLOTHING SIZE    |
      |SHOE SIZE        |
      |CELEB STYLE      |
      |PRICE            |
     

  @mink:selenium2
  Scenario Outline: Refine by options in Clothing
     Given I am on "/clothing"
     Then I should see "<Refine by Options>"

    Examples:
      |Refine by Options|
      |SHOP BY CATEGORY |
      |SHOP BY TREND    |
      
     
  @mink:selenium2
  Scenario Outline: Refine by options in Dresses
    Given I am on "/dresses"
    Then I should see "<Refine by Options>"

    Examples:
      |Refine by Options|
      |REFINE BY        |
      |CATEGORY         |
      |COLOUR           |
      |CLOTHING SIZE    |
      |CELEB STYLE      |
      |PRICE            |
    

  @mink:selenium2
  Scenario Outline: Refine by options in Footwear
    Given I am on "/footwear"
    Then I should see "<Refine by Options>"

    Examples:
      |Refine by Options|
      |REFINE BY        |
      |CATEGORY         |
      |COLOUR           |
      |SHOE SIZE        |
      |PRICE            |
     
    
  @mink:selenium2
  Scenario Outline: Refine by options in Accessories
    Given I am on "/accessories"
    Then I should see "<Refine by Options>"

    Examples:
      |Refine by Options|
      |REFINE BY        |
      |CATEGORY         |
      |COLOUR           |
      |BRA SIZE         |
      |CLOTHING SIZE    |
      |PRICE            |