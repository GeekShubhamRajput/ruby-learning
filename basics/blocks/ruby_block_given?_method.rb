## Ruby block_given? Method 

block_given? → true or false

It returns true if a block is passed to a method; otherwise, it returns false.

def try
  if block_given?
    yield
  else
    "no block"
  end
end
try                  #=> "no block"
try { "hello" }      #=> "hello"
try do "hello" end   #=> "hello"
