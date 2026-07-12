# Ruby allows you to reopen an existing class and add or modify methods, 
# and those changes are available to all existing and future objects of that class.

class Book
  attr_reader :name, :writer, :pages

  def initialize(name, writer, pages)
    @name = name
    @writer = writer
    @pages = pages
  end 
end

godan = Book.new("Godan", "Munshi Premchand", 400)
p godan

class Book
  def read
    1.step(pages, 10){ |page| puts "Reading page number #{page}" }
    puts "Done! with reading #{name}"
  end
end

p godan.read
