require 'rubygems' if RUBY_VERSION < '1.9'
require 'rest-client'

values = '{
  "question": "Favourite programming language?",
  "choices": [
    "Swift",
    "Python",
    "Objective-C",
    "Ruby"
  ]
}'

headers = {
  :content_type => 'application/json'
}

response = RestClient.post 'http://private-80f7b-test8600.apiary-mock.com/questions', values, headers
puts response