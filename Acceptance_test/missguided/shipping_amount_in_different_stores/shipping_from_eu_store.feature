Feature: User in EU store can see different shipping amounts
In order to pay different shipping amounts
As a user in EU store
I want to buy product 

 	
@mink:selenium2 
Scenario Outline: Deliver in France
Given I am logged in as "user in eu"
And I add product and go to delivery
And I click on "//div/div/ol/li[1]/div[2]/form/fieldset/div/ul/li[2]/label"
And I click on "//div/div/ol/li[1]/div[2]/form/fieldset/div/div/button"
And I select "825628" from "shipping-address-select"
And I wait "500" milliseconds
And I click on "//div/div/ol/li[2]/div[2]/form/div/button"
And I wait "500" milliseconds
Then I should see "EU Standard" 
And I should see "<Amount1>"
And I should see "EU Next Day" 
And I should see "<Amount2>"


Examples:
	|Delivery_Country |Amount1   |Amount2 |
	|France           |€13.50    |€20.24  |


