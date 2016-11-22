class PuppyDetail < Generic

	def initialize browser
		@browser = browser
	end

	def confirm_on_page
		adopt_puppy_btn.wait_until_present
		return_to_dashboard_btn.wait_until_present
	end

	def adopt_puppy_btn
		@browser.button(text: 'Adopt Me!')
	end

	def return_to_dashboard_btn
		@browser.div(id: 'content').a
	end

end