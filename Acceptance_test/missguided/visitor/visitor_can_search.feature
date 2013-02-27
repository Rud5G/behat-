Feature: Search
  In order to see a word definition
  As a website user
  I need to be able to search for a word

  Scenario: Searching for a page that does exist
    Given I am on "/"
    When I fill in "search" with "dress"
    And I press "Search"
    Then I should see "Dresses"

  Scenario: Searching for a page that does NOT exist
    Given I am on "/"
    When I fill in "search" with "xyz"
    And I press "Search"
    Then I should see "Your search returns no results."