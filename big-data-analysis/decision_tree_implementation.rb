require 'decisiontree'

attributes = ['Temp']
training = [
  [36.6, 'healthy'],
  [37, 'sick'],
  [38, 'sick'],
  [36.7, 'healthy'],
  [40, 'sick'],
  [50, 'really sick'],
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'sick', :continuous)
dec_tree.train

test = [30, 'sick']
decision = dec_tree.predict(test)

puts "Predicted: #{decision}" 
puts "True decision: #{test.last}"
