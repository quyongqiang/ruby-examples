require 'rubygems' if RUBY_VERSION < '1.9'
require 'rest-client'

response = RestClient.get 'http://private-80f7b-test8600.apiary-mock.com/questions'
puts response
