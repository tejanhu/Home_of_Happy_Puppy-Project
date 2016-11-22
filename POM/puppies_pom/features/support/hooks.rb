browser = Watir::Browser.new :chrome

Before do |scenario|
	@app ||= App.new browser
end

After do |scenario|

end

#at the end of the entire scenarios completion
at_exit do
	browser.close
end