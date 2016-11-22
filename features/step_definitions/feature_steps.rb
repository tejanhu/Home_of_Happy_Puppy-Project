require 'watir-webdriver'
require 'pry'

#view puppy details via dashboard page
Given(/^I am on the dashboard page$/)do

@browser = Watir::Browser.new
@browser.goto('http://puppies.herokuapp.com/')
end

#clicking on view details page
When(/^I click on view details button for a puppy$/)do
@browser.button(value: 'View Details').click
end

Then(/^I should be able to see the details for the puppy I clicked on$/)do
# binding.pry
top_div = @browser.div(id: 'content')
top_div.divs[1].wait_until_present
@browser.quit
end


#returning to dashboard page via puppy details page
Given(/^I am on the Puppy Details page$/)do
@browser = Watir::Browser.new
# @browser.driver.manage.timeouts.implicit_wait = 30
@browser.goto('http://puppies.herokuapp.com/')
@browser.button(value: 'View Details').click
end

Then(/^I should be able to see the following:$/)do |table|
pup_name =  main_content.divs[1].h2
pup_breed = main_content.divs[1].h3
pup_price = main_content.div(class: 'fees_line')
adopt_btn = main_content.divs[2].button(class: 'rounded_button')
to_dashboard_btn = main_content.divs[0].a

pup_name.exists?
pup_breed.exists?
pup_price..exists?
adopt_btn.exists?
to_dashboard_btn.exists?
end

When(/^I click on the dashboard button$/)do
@browser.div(id: 'content').a.click
end

Then(/^I should be sent to the Dashboard Page$/)do
main_div = @browser.div(id: 'content')
main_div.divs[0].wait_until_present
@browser.quit
end


#adopting a puppy via puppy details page
When(/^I adopt a puppy$/)do
@browser.button(value: 'Adopt Me!').click
end

Then(/^I should be sent to the Puppy Adoption Page$/)do
@browser.goto('http://puppies.herokuapp.com/carts')
@browser.quit
end





#adoption page
# Given(/^I am on the adoption page$/)do
# pending
# end