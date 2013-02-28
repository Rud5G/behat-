Feature: User sees title of brand card
  As a user
  In order to see brand title
  I can see title of  brand card
  
  @mink:selenium2
  Scenario: Title of the brand card is on the brand card page
   Given I am on "/card/view/5"
   And I wait "40000" milliseconds
   Then I should see "Animal"