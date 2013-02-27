Feature: User can access all the links in homepage 
In order to test all links from homepage
As a user
I want to make sure that all links are working well


@mink:selenium2
Scenario Outline: check all links are accessible from HomePage navigation
Given I am on "/"
When I follow "<HompageLinks>"
And I wait "1000" milliseconds
Then I should be on "<Output>"

Examples:

| HomepageLinks  	 | Output 					 		|
| Cookies 		 	 | /cookies 				 		|
| Register 		  	 | /customer/account/create/		|
| Log In 		 	 | /customer/account/login/ 		|
| About us		 	 | /about   				 		|	
| Affiliates	 	 | /affiliates  			 		|	
| Terms & Conditions | /term   							|	
| Sitemap	 	     | /catalog/seo_sitemap/category/	|
 			


 