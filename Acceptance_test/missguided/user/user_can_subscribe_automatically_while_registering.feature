Feature: Subscribe box to automatically checked on the Account Registration page  
  In order to receive regular updates from Missguided
  As a user 
  I want subscribe box to automatically checked on the Account Registration page

  @mink:selenium2
  Scenario:User is in Homepage
    Given I am on "/"
    When I follow "Register" 
    And I wait "500" milliseconds
    Then the "is_subscribed" checkbox should be checked



  @mink:selenium2
  Scenario:User is in Login page
    Given I am on "/customer/account/login/"
    When I press "Create an Account" 
    And I wait "500" milliseconds
    Then the "is_subscribed" checkbox should be checked