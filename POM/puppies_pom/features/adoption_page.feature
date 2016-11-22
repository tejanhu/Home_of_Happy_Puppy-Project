Feature: Adoption Page

	@wip
	Scenario: View Adoption Page
		Given  I am on the adoption page
		Then I should be able to see the following:
			|puppy name                 |
			|puppy breed                |          
			|puppy price                |          
			|Adopt Another Puppy button |
			|Change your mind button    |
			|Complete adoption button   |

	@wip
	Scenario: Adopt another puppy
		Given I am on the adoption page
		When I click the "Adopt Another Puppy" button
		Then I should be sent to the Dashboard
	@wip
	Scenario: Complete adoption
		Given I am on the adoption page
		When I click the "Complete the Adoption" button
		Then I should see a form where I can enter my credentials

	