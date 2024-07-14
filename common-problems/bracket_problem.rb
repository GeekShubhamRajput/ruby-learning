require 'pry'

# Bracket pgm start bracket should have an end bracket.
# 1. (a+b)
# 2. {(a+b) + (c+d)}
# 3. {{( q + w}}
# 4. {([1 + t)}

class BracketTest

  def self.check_bracket(input_string)
    stack = []
    input_string.each_char do |char|
      if ['(', '{', '['].include?(char)
        stack.push(char)
      elsif [')', '}', ']'].include?(char)
        return false if stack.empty?

        top = stack.pop
        if (char == ')') && top != '(' || (char == '{') && top != '}' || (char == ']') && top != '['
          return false
        end
      end
    end
    stack.empty?
  end
end

puts BracketTest.check_bracket('{(a+b) + (c+d)}')
