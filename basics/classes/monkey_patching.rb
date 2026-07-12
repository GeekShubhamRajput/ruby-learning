# Monkey Patching is the technique of reopening an existing class to add or modify 
# its methods at runtime.

# Drawbacks of Monkey Patching:
# Can override existing methods and cause unexpected behavior.
# Different libraries may conflict by modifying the same class.
# Makes code harder to maintain and debug.

class String

  def count_vowels
    self.downcase.count("aeiou")
  end
end

p "Refregeratory".count_vowels
p "Shubham".count_vowels
