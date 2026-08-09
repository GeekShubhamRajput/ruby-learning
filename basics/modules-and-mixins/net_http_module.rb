## Ruby Net::HTTP Module

# Net::HTTP provides Ruby's standard way to interact with HTTP servers and APIs 
# without requiring an external gem.

## Common uses:
# Send GET, POST, PUT, PATCH, and DELETE requests
# Consume REST APIs
# Send headers and request bodies
# Handle HTTP responses

require "net/http"
require "uri"

uri = URI("https://jsonplaceholder.typicode.com/posts")

response = Net::HTTP.get_response(uri)
puts response.body

params = { title: "foo", body: "bar", userId: 1 }

response = Net::HTTP.post_form(uri, params)

puts response.body
