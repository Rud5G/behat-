Feature: User can buy 3 products in price of 2
  In order to buy 3 products in price of 2 
  As a user
  I want to get discount when I buy 3 products

  @mink:selenium2
  Scenario:Buy 3 same products and get 1 free.
    Given I am on "/wildlife-wildbird/wild-bird-accessories/full-colour-wireless-camera.html"
    And I fill in "Quantity" with "3"
    And I press "Add to Cart"
    And I wait "3000" milliseconds
    Then I should see "£199.98"
    And I should see "£133.32"

  @mink:selenium2
  Scenario:Buy 3 different products and get cheapest free.
    Given I am on "/wildlife-wildbird/wild-bird-food/premium-wild-bird-seed-12-75kg.html"
    And I press "Add to Cart"
    And I wait "1000" milliseconds
    And I am on "/wildlife-wildbird/wild-bird-food/fat-balls-tub-of-50.html"
    And I press "Add to Cart"
    And I wait "1000" milliseconds
    And I am on "/wildlife-wildbird/wild-bird-food/love-wildlife-value-collection.html"
    And I press "Add to Cart"
    And I wait "1000" milliseconds
    Then I should see "£63.30"
    And I should see "£46.64"

@mink:selenium2
  Scenario:Buy 3 same products and get 33.3% off
    Given I am on "/aquatics/fish-food/256746.html"
    And I fill in "Quantity" with "3"
    And I press "Add to Cart"
    And I wait "3000" milliseconds
    Then I should see "£8.55"
    And I should see "£5.70"

