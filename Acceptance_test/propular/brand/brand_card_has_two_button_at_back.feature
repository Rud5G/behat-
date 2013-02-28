Feature: User sees brand card has two button at back 
  As a user
  In order to see activity of  the brand card 
  I can see two button at  back of the brand card
  
  @mink:selenium2
  Scenario Outline: Two buttons are at he back of the brand card
   Given I am on "/card/view/5#back"
   And I wait "4000" milliseconds
   Then I should see "<Animal_Features>" 
   
   Examples:
   |Animal_Features|
   |Animal's Activity|
   |Animal's Stuff|
   |Animal's Deck Activity|
