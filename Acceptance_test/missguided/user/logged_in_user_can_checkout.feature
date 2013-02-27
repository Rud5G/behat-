Feature: Logged in user can checkout
  As a logged in user
  I want to place an order

  @mink:selenium2
  Scenario: User in UK  store
    Given I am logged in as "valid user"
    When I add product and proceed to checkout
    And I click on "//*[@id='s_method_productmatrix_Next_Day_Delivery']"
    And I click on "//*[@id='shipping-method-buttons-container']//button"
    And I click on "//*[@id='p_method_sagepaydirectpro']"
    And I fill in "Name on Card" with "Tipi Coze"
    And I fill in "Credit Card Number" with "4929000000006"
    And I select "Visa" from "sagepaydirectpro_cc_type" 
    And I select "08 - August" from "sagepaydirectpro_expiration" 
    And I select "2018" from "sagepaydirectpro_expiration_yr" 
    And I fill in "Card Verification Number" with "123"
    And I click on "//*[@id='payment-buttons-container']//button"
    Then I press "Place Order"
    And I wait "500" milliseconds
    And I am on "/checkout/onepage/success/"