Feature: User sees person comment
  As a user
  In order to see what that person commented on
  I can see the person comment
  
  @mink:selenium2
  Scenario: Comment is listed in the person activity
    Given I am on "/card/view/212#back"
    And I wait "45000" milliseconds
    Then I should see "COMMENTED"
    And I wait "45000" milliseconds