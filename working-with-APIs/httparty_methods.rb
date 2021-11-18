require 'httparty'

response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

puts response.body
puts response.code
puts response.message
puts response.headers.inspect
