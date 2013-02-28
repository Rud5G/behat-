Feature: User sees media items added
  As a user
  In order to see what that person  media items are added
  I can see the person media items added
  
  @mink:selenium2
  Scenario:Loves is listed in the person activity
    Given I am on "/card/view/212#back"
    And I wait "45000" milliseconds
    Then I should see "LOVES"
    And I wait "5000" milliseconds

  @mink:selenium2
  Scenario:IS IN is listed in the person activity
    Given I am on "/card/view/212#back"
    And I wait "45000" milliseconds
    Then I should see "IS IN"
    And I wait "5000" milliseconds

 
   
