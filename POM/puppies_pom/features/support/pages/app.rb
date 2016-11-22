class App
	def initialize browser
		@browser = browser
	end

	def dashboard
		@dashboard ||= Dashboard.new @browser
	end

	def puppy_detail
		@puppy_details ||= PuppyDetail.new @browser
	end

	def adoption_page
		@adoption_page ||= AdoptionPage.new @browser
	end

end