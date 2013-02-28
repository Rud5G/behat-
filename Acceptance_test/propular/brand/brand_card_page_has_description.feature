Feature: User sees brand card has description 
  As a user
  In order to see description of the brand card 
  I can see brand card description
  
  @mink:selenium2
  Scenario: Description is in the brand card page
   Given I am on "/card/view/5"
   And I wait "40000" milliseconds
   Then I should see "Animal are a leading UK Lifestyle brand Collect this card to receive all their updates Once collected you can wear this design as a Skin on your card"