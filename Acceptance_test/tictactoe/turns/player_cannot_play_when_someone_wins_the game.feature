Feature: Player cannot play when someone wins the game
  As a player
  I want  not to be able to select a cell when someone won
  In order to restart game

  Background:
    Given I am on the "home page"
    And I start the game

  @mink:selenium2
  Scenario:Player X wins
    When I win the game
    And I select cell (1,1) 
    Then I should see message "Player X wins!"
  @mink:selenium2
  Scenario:Player O wins
    When other player win the game 
    And I select cell (1,1)
    Then I should see message "Player O wins!"