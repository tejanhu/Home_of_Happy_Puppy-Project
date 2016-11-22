require 'watir-webdriver'
require 'pry'


require_relative 'pages/generic.rb'
# require_relative 'pages/dashboard.rb'
# require_relative 'pages/puppy_detail.rb

#array storing each file in the directory
Dir["#{Dir.pwd}/features/support/pages/*.rb"].each {|f| require f}

