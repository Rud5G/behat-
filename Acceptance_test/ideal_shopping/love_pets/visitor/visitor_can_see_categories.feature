Feature: Visitor can see the categories
  In order to verify the categories
  As a visitor
  I want to check the categories .

  @mink:selenium2
  Scenario Outline: Visitor can see the categories for lovepets website
    Given I am on "/"
    Then I should see "<Categories>"
    And should not see "Plants"
    And I should not see "Wild Bird"

    Examples:
      |Categories         |
      |Dogs               |
      |Small Pets         |
      |Aquatics           |
      |Reptile            |
      |Wildlife & Wildbird|
      |Indoor Bird        |

  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Dogs
    Given I am on "/dogs.html"
    Then I should see "<Subcategories_Dogs>"

    Examples:
      |Subcategories_Dogs         |
      |Dog Beds                   |
      |Dog Bowls & Feeders        |
      |Dog Cleaning, Home & Garden|
      |Dog Coats & Clothing       |
      |Dog Collars & Leads        |
      |Dog Crates, Kennels & Pens |
      |Dog Flea & Ticks           |
      |Dog Food                   |
      |Dog Grooming Products      |
      |Dog Health & Hygiene       |
      |Dog Toys                   |
      |Dog Training Products      |
      |Dog Travel Products        |
      |Dog Treats & Biscuits      |

  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Cats
    Given I am on "/cats.html"
    Then I should see "<Subcategories_Cats>"

    Examples:
      |Subcategories_Cats               |
      |Cat Carriers & Transport         |                   
      |Cat Flaps & Doors                |
      |Cat Scratchers & Furniture       |
      |Cat Beds                         |
      |Cat Bowls & Feeding Accessories  |
      |Cat Collars, Leads and Tags      |
      |Cat Flea & Ticks                 |
      |Cat Food                         |
      |Cat Grooming Tools               |
      |Cat Health & Hygiene             |
      |Cat Toys                         |
      |Cat Treats & Catnip              |
      |Cat Litter                       |
      |Cat Litter Trays & Accessories   |
        

  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Small Pets
    Given I am on "/small-pets.html"
    Then I should see "<Subcategories_Small_Pets>"

    Examples:
      |Subcategories_Small_Pets |
      |Small Pet Accessories    |                   
      |Small Pet Bedding        |
      |Small Pet Cages          |
      |Rabbit Hutches & Runs    |
      |Small Pet Toys           |
      |Small Pet Food           |
    

  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Aquatics
    Given I am on "/aquatics.html"
    Then I should see "<Subcategories_Aquatics>"

    Examples:
      |Subcategories_Aquatics       |
      |Fish Food                    |                   
      |Aquarium Filters             |
      |Aquariums & Stands           |
      |Aquarium Maintenance         |
      |Ponds                        |
      |Aquarium Plants & Decoration |
      |Aquarium Pumps               |
    


  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Reptile
    Given I am on "/reptile.html"
    Then I should see "<Subcategories_Reptile>"

    Examples:
      |Subcategories_Reptile|
      |Reptile Food         |                   
      |Terrarium Equipment  |
      |Terrariums           |
      |Reptile Accessories  |

  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Wildlife & Wildbird
    Given I am on "/wildlife-wildbird.html"
    Then I should see "<Subcategories_Wildlife_&_Wildbird>"

    Examples:
      |Subcategories_Wildlife_&_Wildbird   |
      |Wild Bird Food                      |                   
      |Wild Bird Feeders & Feeding Stations|
      |Wild Animal Homes                   |
      |Wild Bird Accessories               |

  
  @mink:selenium2
  Scenario Outline: Visitor can see the sub-categories for Indoor Bird
    Given I am on "/indoor-bird.html"
    Then I should see "<Subcategories_Indoor_Bird>"

    Examples:
      |Subcategories_Indoor_Bird|
      |Indoor Bird Food         |                   
      |Bird Cages & Stands      |
      |Bird Cage Accessories    |
     

    
    

         