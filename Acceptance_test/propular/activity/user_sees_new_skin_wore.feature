Feature: User sees new skin wore
  As a user
  In order to see what new skin that person is wearing
  I can see the person new skin
  
  @mink:selenium2
  Scenario: Wore is listed in the person activity
    Given I am on "/card/view/208#back"
    And I wait "45000" milliseconds
    Then I should see "WORE" 
