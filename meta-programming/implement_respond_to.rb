## ImplementRespondTo

require 'ostruct'

class Book
  attr_accessor :title, :author, :price

  def book
    OpenStruct.new(title: title, author: author, price: price)
  end

  def method_missing(method_name, *args, &block)
    if method_name.to_s =~ /book_(.*)/
      book.send($1, *args, &block)
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private=false)
    method_name.to_s.start_with?('book_') || super
  end

end

book = Book.new
book.title = "Two states"
book.author = "Chetan Bhagat"
book.price = 58

p book.book_author
p book.book_title

p book.respond_to?(:book_author) 
