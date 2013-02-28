Feature: Visitor sees home page
  As a visitor
  In order to see what's hot on propular
  I can view home page contents

@mink:selenium2  
Scenario: Showcase is visible
  Given I am on "/"
  Then I should see an "div.showcase" element

@mink:selenium2
Scenario: Can move forward
   Given I am on "/"
   Then I should see an "ul.flex-direction-nav li a.next" element

@mink:selenium2
Scenario: Can move backwards
   Given I am on "/"
   Then I should see an "ul.flex-direction-nav li a.prev" element

@mink:selenium2
Scenario: It moves forward the width of the showcase
  Given I am on "/"
  When I follow "Next"
  Then I should see "-1144px" in the "ul.slides" element

@mink:selenium2
Scenario: It moves backward the width of the showcase
  Given I am on "/"
   And I know the initial distance
   When I follow "Next"
   And I wait "1000" milliseconds
   Then showcase content moves "-572"
