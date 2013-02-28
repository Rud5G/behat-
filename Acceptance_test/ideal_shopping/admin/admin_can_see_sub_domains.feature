Feature: Admin can see the attributes of product
  In order to edit the attributes of product 
  As a Admin
  I want to edit the attributes of product

  @mink:selenium2
  Scenario Outline: Admin can see the sub domain for lovepets website.
    Given I am logged in as "admin"
    And I wait "2000" milliseconds
    And I am on "/index.php/admin/catalog_product/edit/id/258/key/183d12b445b0e159efa8499cb3a87ab7c519b66f3eb4b600aef4c9c4310f6db4/" 
	  And I wait "1000" milliseconds
	  Then I should see "Product Information"
    And I should see "<Attributes_General>"

    Examples:
      |Attributes_General      |
      |Name                    |
      |Description             |
      |Short Description       |
      |SKU                     |
      |Weight                  |
      |Status                  |                 
      |URL Key                 |
      |Visibility              |
      |Delivery message        |
      |Returns message         |
      |New                     |
      |On sale                 |
      |Weight                  |
      |Was price presented     |  
   
   