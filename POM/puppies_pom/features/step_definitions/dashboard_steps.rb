Given(/^I am on the Dashboard$/) do
	@app.dashboard.visit
end

When(/^I click on the View Details button for a Puppy$/) do
	# binding.pry
	@app.dashboard.view_details_btn.when_present.click
end

Then(/^I should be sent to that Puppy\'s Details page$/) do
	@app.puppy_detail.confirm_on_page
end