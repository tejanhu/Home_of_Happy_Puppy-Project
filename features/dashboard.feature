Feature: Dashboard

	Scenario: Navigating to Puppy details page
		Given  I am on the dashboard page
		When I click on view details button for a puppy
		Then I should be able to see the details for the puppy I clicked on