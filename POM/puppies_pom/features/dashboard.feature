@dashboard

Feature: Dashboard

	Scenario: Going to a Puppy's Details Page
		Given I am on the Dashboard
		When I click on the View Details button for a Puppy
		Then I should be sent to that Puppy's Details page