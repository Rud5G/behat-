Feature: Player can see message when occupied cell is selected
  As a player
  I want to see message
  In order to know selected cell is occupied

  Background:
    Given I am on the "home page"
    And I start the game
    And I select cell (1,1)

  @mink:selenium2
  Scenario:Selected cell is occupied
    When  I select cell (1,1)
    Then I should see error message 

  @mink:selenium2
  Scenario:Selected cell is not occupied
    When I select cell (1,2)
    Then I should not see error message