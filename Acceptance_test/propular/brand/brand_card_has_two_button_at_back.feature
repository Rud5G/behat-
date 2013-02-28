Feature: User sees brand card has two button at back 
  As a user
  In order to see activity of  the brand card 
  I can see two button at  back of the brand card
  
  @mink:selenium2
  Scenario: Two buttons are at he back of the brand card
   Given I am on "/card/view/5#back"
   And I wait "40000" milliseconds
   Then I should see "Animal's Activity" 
   Then I should see "Animal's Stuff"
   Then I should not see "Animal's Deck Activity" 
