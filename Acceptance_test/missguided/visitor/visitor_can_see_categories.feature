Feature: Visitor can see the categories
  In order to verify the categories
  As a visitor
  I want to check the categories .

  @mink:selenium2
  Scenario Outline: Visitor can see categories in homepage
    Given I am on "/"
    Then I should see "<Categories>"

    Examples:
      |Categories  |
      |NEW IN      |
      |CLOTHING    |
      |DRESSES     |
      |FOOTWEAR    |
      |ACCESSORIES |
      |TRENDS      |
      |SALE        |
      |SOCIAL      |
      |BLOG        |

  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for New In
    Given I am on "/new-in"
    Then I should see "<Subcategories_New_in>"

    Examples:
      |Subcategories_New_in |
      |New In Clothing      |
      |New In Footwear      |
      |New In Accessories   |
      |Back In Stock        |
     

  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Clothing
    Given I am on "/clothing"
    Then I should see "<Subcategories_Clothing>"

    Examples:
      |Subcategories_Clothing   |
      |Shop by Category         |                   
      |Shop by Celebrity Style  |
      |Shop by Trend            |
     
  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Dresses
    Given I am on "/dresses"
    Then I should see "<Subcategories_Dresses>"

    Examples:
      |Subcategories_Dresses |
      |Party Dresses         |                   
      |Day Dresses           |
      |Skater Dresses        |
      |Bodycon Dresses       |
    

  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Footwear
    Given I am on "/footwear"
    Then I should see "<Subcategories_Footwear>"

    Examples:
      |Subcategories_Footwear  |
      |Heels                   |                   
      |Boots                   |
      |Wedges                  |
      |Flats                   |
     
    
  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Accessories
    Given I am on "/accessories"
    Then I should see "<Subcategories_Accessories>"

    Examples:
      |Subcategories_Accessories|
      |Jewellery                |                   
      |Bags & Purses            |
      |Tights/ Hosiery           |
      |Belts                    |

  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Trends
    Given I am on "/trends"
    Then I should see "<Subcategories_Trends>"

    Examples:
      |Subcategories_Trends |
      |MINIMALIST           |                   
      |PRECIOUS JEWEL       |
      |GOTHICOLOGY          |
      |CAPTAIN MAJOR        |
      |OPULENT EXPRESS      |
      |WET LOOK LUXE        |
     
  
  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Sale
    Given I am on "/sale"
    Then I should see "<Subcategories_Sale>"

    Examples:
      |Subcategories_Sale     |
      |Dresses                |                   
      |Jeans                  |
      |Shorts                 |
      |Tops                   |
      |Footwear               |
      |Knitwear               |
      |Trousers               |
      |Blazers                |
      |Leggings and Hosiery   |
      |Jumpsuits And Playsuits|
     

  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Social
    Given I am on "/social"
    Then I should see "<Subcategories_Social>"

    Examples:
      |Subcategories_Social   |
      |Dresses                |                   
      |Jeans                  |
      |Shorts                 |
      |Tops                   |
      |Footwear               |
      |Knitwear               |
      |Trousers               |
      |Blazers                |
      |Leggings and Hosiery   |
      |Jumpsuits And Playsuits|
     
  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Blog
    Given I am on "/blog"
    Then I should see "<Subcategories_Blog>"

    Examples:
      |Subcategories_Blog     |
      |Most Recent Posts      |                   
      |Blogs We Love          |

         