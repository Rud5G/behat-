Feature: User in UK store can see different shipping amounts
In order to pay different shipping amounts
As a user in UK store
I want to buy product 

@mink:selenium2 
Scenario Outline: Deliver in UK
Given I am logged in as "user in uk"
And I add product and proceed to checkout
Then I should see "Saver Delivery  -  <Saver>" 
And I should see "Standard Delivery  -  <Shipping_Amt>" 
And I should see "Next Day Delivery  -  <Next_day>"
And I should see "Saturday Delivery  -  <Saturday>" 

 

Examples:
	|Delivery_Country|Shipping_Amt	    |Next_day	|Saver | Saturday  |
	|United Kingdom	 |£2.95 			|£3.95 		|£1.95 | £5.50	   |
	


@mink:selenium2 
Scenario Outline: Deliver to country outside UK
Given I am logged in as "user in uk"
And I add product and go to delivery
And I click on "//div/div/ol/li[1]/div[2]/form/fieldset/div/ul/li[2]/label"
And I click on "//div/div/ol/li[1]/div[2]/form/fieldset/div/div/button"
And I select "825630" from "shipping-address-select"
And I wait "500" milliseconds
And I click on "//div/div/ol/li[2]/div[2]/form/div/button"
And I wait "500" milliseconds
Then I should see "International Delivery"
And I should see "<Cost>"

Examples:
	|Delivery_Country| Cost  |
	|Switzerland	 | £15.95|

