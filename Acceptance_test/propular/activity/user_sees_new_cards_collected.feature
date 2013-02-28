Feature: User sees new cards collected
  As a user
  In order to see what cards other users have collected
  I can see the new cards collected.
  
  @mink:selenium2
  Scenario: Collected is listed in the person activity
    Given I am on "/card/view/31#back"
    And I wait "45000" milliseconds
    Then I should see "COLLECTED"
    