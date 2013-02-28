Feature: User sees information about prop in brand card page 
  As a user
  In order to see information about props 
  I can see props given for collecting brand card
  
  @mink:selenium2
  Scenario: Props given for collecting the card is in the brand card page
   Given I am on "/card/view/5"
   And I wait "40000" milliseconds
   Then I should see "Collect this card now and get 5 props!"