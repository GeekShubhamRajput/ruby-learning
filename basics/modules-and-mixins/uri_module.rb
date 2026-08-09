## URI Module
# URI is a module providing classes to handle Uniform Resource Identifiers (RFC2396).

## Features
# Uniform way of handling URIs.
# Flexibility to introduce custom URI schemes.
# Flexibility to have an alternate URI::Parser (or just different patterns and regexp’s).

require 'uri'

uri = URI("http://foo.com/posts?id=30&limit=5#time=1305298413")
#=> #<URI::HTTP http://foo.com/posts?id=30&limit=5#time=1305298413>

p uri.scheme    #=> "http"
p uri.host      #=> "foo.com"
p uri.path      #=> "/posts"
p uri.query     #=> "id=30&limit=5"
p uri.fragment  #=> "time=1305298413"

p uri.to_s      #=> "http://foo.com/posts?id=30&limit=5#time=1305298413"
