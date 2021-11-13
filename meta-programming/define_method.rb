## DynamicallyMethodCreation

# We can create methods at run time using define_method.

class Book

  genres = %w{fiction horror history}

  genres.each do |genre|
    define_method("#{genre}_details") do |args|
      puts "Genre : #{genre}"
      puts args
      puts genre.object_id
    end
  end
end

book = Book.new
book.history_details("Sir Richard")
book.horror_details("Shubham")
book.fiction_details("Kelly")

p book.respond_to?(:fiction_details) # true
