Feature:Visitor sees flip bubble
As a visitor
In order to  see that the card is flippable
I can view the message that 
  
 @mink:selenium2
 Scenario: I click the card in homepage
    Given I am on "/card/view/144"
    Then I should see an "div.activity-balloon" element