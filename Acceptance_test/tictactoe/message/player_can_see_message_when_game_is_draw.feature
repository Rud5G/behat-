Feature: Player can see message when the game is draw
  As a player
  I want to see message when no one wins and thers is no empty cell
  In order to know game is draw

  @mink:selenium2
  Scenario:Game is draw
    Given I am on the "home page"
    And I start the game
    When game is draw
    Then I should see message "It's a draw!"