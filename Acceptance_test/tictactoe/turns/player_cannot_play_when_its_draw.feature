Feature: Player cannot play when its draw
  As a player
  I want  not to be able to select a cell when its draw
  In order to restart game

  @mink:selenium2
  Scenario:Game is draw
    Given I am on the "home page"
    And I start the game
    When game is draw
    And I select cell (1,1)
    Then I should see message "It's a draw!"