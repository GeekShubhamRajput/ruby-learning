# Define a word_frequency method that accepts a piece of text.
# Return a hash with a count of the number of times each word
# appears within the text. The hash keys should be the words
# and the values should be their counts. Assume the text will
# be in all lowercase.

def word_frequency(text)
  result = {}
  words = text.split(" ")
  
  words.each do |word|
    if result.has_key?(word)
      result[word] += 1
    else 
      result[word] = 1
    end 
  end
  result
end

def word_frequency(text)
  result = Hash.new(0)
  words = text.split(" ")
  words.each{|word| result[word] += 1 }
  result
end

def word_frequency(text)
  text.split(" ").tally
end

# Examples:
# The => indicates the expected return value
p word_frequency("blue red blue green")  #=> {"blue"=>2, "red"=>1, "green"=>1}
p word_frequency("a land far far away")  #=> {"a"=>1, "land"=>1, "far"=>2, "away"=>1}
p word_frequency("")                     #=> {}
