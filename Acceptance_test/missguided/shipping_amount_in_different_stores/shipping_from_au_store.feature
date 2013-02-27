Feature: User in AU store can see different shipping amounts
In order to pay different shipping amounts
As a user in AU store
I want to buy product 

 	
@mink:selenium2 
Scenario Outline: Deliver in Australia
Given I am logged in as "user in au"
And I add product and go to delivery
And I click on "//div/div/ol/li[1]/div[2]/form/fieldset/div/ul/li[2]/label"
And I click on "//div/div/ol/li[1]/div[2]/form/fieldset/div/div/button"
And I select "825629" from "shipping-address-select"
And I wait "500" milliseconds
And I click on "//div/div/ol/li[2]/div[2]/form/div/button"
And I wait "500" milliseconds
Then I should see "Free Standard Delivery  -  <Free>" 
And I should see "Standard Delivery  -  <Shipping_Amt>" 
And I should see "Express Delivery  -  <Express>" 

Examples:
	|Delivery_Country |Free	   |Shipping_Amt |Express | 
	|Australia        |$0.00   |$14.99	 |$22.99  |


@mink:selenium2 
Scenario: Deliver to country not in shipping allow list
Given I am logged in as "user in au"
And I add product and proceed to checkout
Then I should see "We are unable to ship to your requested delivery address from this store, please go back to the homepage and sign in to the correct store." 

