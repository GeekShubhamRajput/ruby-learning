require 'httparty'

class User
  include HTTParty
  base_uri 'jsonplaceholder.typicode.com'
  
  def user_list
    self.class.get("/users")
  end

end

user_obj = User.new
user_collection = user_obj.user_list

user_collection.each do |user|
  puts "Name: #{user['name']} | Email: #{user['email']}"
end
