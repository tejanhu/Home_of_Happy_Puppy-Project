class Dashboard

	def initialize browser
		@browser = browser
	end
	
	def visit
		@browser.goto "http://puppies.herokuapp.com/"
		confirm_on_page
	end

	def confirm_on_page
		view_details_btn.wait_until_present
	end

	def view_details_btn
		@browser.button(text: 'View Details')
	end
end