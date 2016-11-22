class AdoptionPage < Generic

	def initialize browser
		@browser = browser
	end

	def visit
		@browser.goto('http://puppies.herokuapp.com/carts')
	end

	def confirm_on_page
		adopt_another_puppy_btn.wait_until_present
		complete_adoption_btn.wait_until_present
		change_your_mind_btn.wait_until_present
	end

	def adopt_another_puppy_btn
		@browser.button(text: 'Adopt Another Puppy')
	end

	def complete_adoption_btn
		@browser.button(text: 'Complete the Adoption')
	end

	def change_your_mind_btn
		@browser.button(text: 'Change your mind')
	end

end