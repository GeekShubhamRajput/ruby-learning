## AddMethodInStandardClass

class String
  def replace_with_pet(pet_name)
    self.gsub!(pet_name, "Pet")
  end
end

p "My dog name is Tiger".replace_with_pet('dog')
p "My cat is sneezing".replace_with_pet('cat')
