# FizzBuzz problem

# Problem: Print numbers from 1 to 100. For multiples of 3, print "Fizz" instead of the number, and for multiples of 5, 
#    print "Buzz". For numbers that are multiples of both 3 and 5, print "FizzBuzz"

def print_fizz_buzz(from, to)
  (from..to).each do |digit|
    if digit % 3 == 0 && digit % 5 == 0
      puts "FizzBuzz"
    elsif digit % 3 == 0
      puts "Fizz"
    elsif digit % 5 == 0
      puts "Buzz"
    else
      puts digit
    end
  end
end

print_fizz_buzz(1, 100)
