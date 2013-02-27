Feature: Index Page
  As a website administrator
  I want to see the index page
  In order to understand what the website offers and how it can benefit me

  @mink:selenium2
  Scenario: Display Header
     Given I am logged in as "admin"
     When I am on "/admin/process/list"
     Then I should see "Index Management"
     