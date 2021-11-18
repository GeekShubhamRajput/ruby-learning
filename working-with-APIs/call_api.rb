require 'httparty'

class User
  include HTTParty
  base_uri 'jsonplaceholder.typicode.com'
  
  def user_list
    response = self.class.get("/users", format: :plain)
    JSON.parse response
  end

end

users = User.new
p users.user_list
