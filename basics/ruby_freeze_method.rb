## Ruby freeze Method

Prevents further modifications to obj. 
A FrozenError will be raised if modification is attempted. 
There is no way to unfreeze a frozen object.
Commonly used for constants and immutable data

a = [ "a", "b", "c" ]
a.freeze
a << "z"  #=> `<<': can't modify frozen Array (FrozenError)

# Check Whether Object is Frozen
a.frozen?  #=> true

## dup vs clone with Frozen Objects
# Dup
dup removes frozen state
b = a.dup
b << "z"
p b   #=> ["a", "b", "c", "z"]

# Clone
clone preserves frozen state
c = a.clone
c << "z"    #=> FrozenError (can't modify frozen Array)
