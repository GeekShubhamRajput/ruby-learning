## Ruby Hash

A Ruby collection that stores data as key-value pairs, where keys are unique,
values can be duplicated, insertion order is preserved,
and values are accessed through their associated keys rather than indexes.

# Important Characteristics of a Hash
1. Keys Must Be Unique
employee = { name: "Shubham", salary: 50000, salary: 80000 }
p employee   # {:name=>"Shubham", :salary=>80000}

2. Values Can Be Duplicated
student = { math: 90, science: 90, english: 85 }

3. Keys Can Be of Different Data Types
hash = { "name" => "Shubham", 1 => "One", :city => "Indore" }

4. Hash Maintains Insertion Order
hash = { first: 1, second: 2, third: 3 }
p hash.keys   # [:first, :second, :third]

5. Accessing a Missing Key Returns nil
employee = { name: "Shubham" }
p employee[:salary] # nil

6. Hash Keys Are Case-Sensitive
hash = { name: "Shubham", "name" => "Rajput" }
p hash # {:name=>"Shubham", "name"=>"Rajput"}
