Feature: Player can play in turn
  As a player
  I want same player not able to select cell twice
  In order to play in turn

  @mink:selenium2
  Scenario:Players play turnwise
    When I am on the "home page"
    And I start the game
    Then I select cell (1,1)
    And I wait "500" milliseconds 
    And I should see "X" in (1,1)
    Then other player select cell (1,2)
    And I wait "500" milliseconds 
    And I should see "O" in (1,2)