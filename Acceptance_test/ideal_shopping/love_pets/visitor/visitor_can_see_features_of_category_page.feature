Feature: Visitor can see features of category page
  In order to verify features available in category page
  As a visitor
  I want to check the categories .

  @mink:selenium2
  Scenario Outline: Visitor can see features available in cateory page 
    Given I am on "/wildlife-wildbird/wild-bird-food.html"
    Then I should see "<Categories_features>"

    Examples:
      |Categories_features        |
      |Wild Bird Food             |
      |Filter your results        |
      |Price                      |
      |New                        |
      |On sale                    |
      |Brand                      |
      |Size                       |        
      |Was                        |
      |Now                        |
      |Compare                    |
      |Add to Basket              |  
      |Review                     |
      |Items 1 - 12 of 26 total   |  
      |Show                       |
      |Sort by                    | 