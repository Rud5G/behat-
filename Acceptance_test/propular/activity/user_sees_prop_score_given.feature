Feature: User sees gave props  activity 
  As a user
  In order to see which user gave prop 
  I can see gave props activity
  
  @mink:selenium2
  Scenario: Gave Props is listed in the person activity
   Given I am on "/card/view/208#back"
   And I wait "30000" milliseconds
   Then I should see "GAVE PROPS"  
