Feature: Player can see message when he wins game
  As a player
  I want to see message 
  In order to know I won game

  @mink:selenium2
  Scenario:Player X wins
    Given I am on the "home page"
    And I start the game
    When I win the game 
    Then I should see message "Player X wins!"

  @mink:selenium2
  Scenario:Player O wins
    Given I am on the "home page"
    And I start the game
    When other player win the game 
    Then I should see message "Player O wins!"