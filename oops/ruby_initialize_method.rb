## RubyInitializeMethod | RubyConstructors

=begin
## Important points
1. Constructors are used to initialize the instance variables.
2. Whenever an object of the class is created using new method, internally it calls the 
  initialize method on the new object.
3. Constructors can’t be inherited.
=end

class Post

  def initialize(title, description)
    @title = title
    @description = description
  end

  def test_initializers
    puts @title
    puts @description
  end

end

post = Post.new("Internet", "Internet is a vast network.")
post.test_initializers
