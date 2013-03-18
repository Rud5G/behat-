Feature: Player can start a game
  As a player
  I want to start a game
  In order to play game
 
  @mink:selenium2
  Scenario:Start game
    Given I am on the "home page"
    When I start the game
    Then I should be able to select cell

