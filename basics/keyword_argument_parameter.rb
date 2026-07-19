# Below example uses keyword arguments in the initialize method. 
# The name and age keywords are required, while hobby is optional with 
# a default value of "Fishing". Since keyword arguments are passed by name, 
# their order doesn't matter.

class Candidate
  attr_accessor :name, :age, :hobby

  def initialize(name:, age:, hobby: "Fishing")
    @name = name
    @age = age
    @hobby = hobby
  end
end

candidate = Candidate.new(name: "Boris", age: 34)
puts candidate.name  # Boris
puts candidate.age   # 34
puts candidate.hobby # Fishing

candidate1 = Candidate.new(age: 34, name: "John")
puts candidate1.name  # John
puts candidate1.age   # 34
puts candidate1.hobby # Fishing

candidate2 = Candidate.new(age: 34, name: "John", hobby: "Singing")
puts candidate2.name  # John
puts candidate2.age   # 34
puts candidate2.hobby # Singing
