Given(/^I am on the Puppy Details page$/)do
	@app.dashboard.visit
	@app.dashboard.view_details_btn.click
end

When /^I click on the dashboard button$/ do
	@app.puppy_detail.return_to_dashboard_btn.when_present.click
end

Then(/^I should be sent to the Dashboard Page$/)do
	@app.dashboard.confirm_on_page
end

When(/^I adopt a puppy$/)do
	# binding.pry
	@app.puppy_detail.adopt_puppy_btn.when_present.click
end

Then(/^I should be sent to the Puppy Adoption Page$/)do
	@app.adoption_page.confirm_on_page
end


