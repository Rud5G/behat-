Feature: Visitor can provide review on a product
  In order to give feedback on a product
  As a visitor
  I want to provide review on a product

  @mink:selenium2
  Scenario: Provide review
    Given I am on "/wild-bird/wild-bird-food/premium-wild-bird-seed-12-75kg.html"
    When I fill in "nickname" with "xyz1"
	  And I check "ratings[7]"
	  And I check "ratings[8]"
	  And I check "ratings[9]"
	  And I fill in "title" with "Bird Seed"
    And I fill in "detail" with "Good"
    Then I press "Submit Review" 
	  