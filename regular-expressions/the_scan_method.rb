## Ruby scan Method

# Use scan when you want to extract all matching occurrences from a string.

text = "Ruby is great. Ruby is powerful."

p text.scan(/Ruby/)  # => ["Ruby", "Ruby"]
