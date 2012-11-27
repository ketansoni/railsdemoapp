Feature: place order online

Scenario: place order
	 

        Given I visit the website
	When i place order
	Then I should be redirected to the confirmation page of order and view status of order 
