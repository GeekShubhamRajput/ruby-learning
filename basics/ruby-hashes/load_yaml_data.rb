require 'yaml'

FILE_NAME = 'secret.yml'

data = YAML.load_file("/home/developer/rails_project/ruby-learning/basics/ruby-hashes/secret.yml")

p data.dig("development", "name")
