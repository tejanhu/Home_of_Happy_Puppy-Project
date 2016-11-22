Feature: Puppy Details

     Background:
         Given I am on the Puppy Details page

Scenario: View Puppy Details
		Then I should be able to see the following:
			|puppy name                |
			|puppy breed               |          
			|puppy price               |          
			|adopt puppy button        |
			|return to dashboard button|

	Scenario: Adopting a Puppy
		When I adopt a puppy
		Then I should be sent to the Puppy Adoption Page

	Scenario: Returning to the Dashboard
		When I click on the dashboard button
		Then I should be sent to the Dashboard Page