Feature: Visitor can see product page
  In order to see different option in product page
  As a visitor
  I want to check the product  page

  @mink:selenium2
  Scenario:Title of the product
    Given I am on "/brielle-stud-peplum-dress-50547"
    Then I should see "Brielle Stud Peplum Dress In Black"


  @mink:selenium2
  Scenario: Product Detials
    Given I am on "/brielle-stud-peplum-dress-50547"
    Then I should see "PRODUCT DETAILS"
    And I should see "This peplum dress with stud neckline is the perfect party piece, flirty and flattering. Simply team with high heels and some gold jewellery and you’re good to go"
   

  @mink:selenium2
  Scenario Outline: Other Features
    Given I am on "/brielle-stud-peplum-dress-50547"   
    Then I should see "<Other_Features_Details>"
    

    Examples:
      |Review_Section_Details                    |
      |Review this item                          |
      |Name                                      |
      |Overall                                   |
      |Quality                                   |
      |Value for money                           |
      |Review Title                              |
      |Review Body                               |
      |Customer Reviews                          |