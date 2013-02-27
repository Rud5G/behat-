Feature: Store Views
  In order to see all store views 
  As an Admin
  I want to login

  @mink:selenium2
  Scenario: Admin can see all store views
    Given I am logged in as "admin"
	  And I wait "1000" milliseconds
    Then I click on "//*[@id='store_switcher']"
    And I should see "English (UK)"
    Then I click on "//*[@id='store_switcher']"
    And I should see "Australian (AU)"
    Then I click on "//*[@id='store_switcher']"
    And I should see "European (EU)"
    Then I click on "//*[@id='store_switcher']"
    And I should see "American (US)"