## Ruby is_a? Method

Returns true if an object is an instance of the given class, 
one of its superclasses, or a module included in its class. 
is_a? is an alias for the kind_of? method.

is_a?(class) → true or false

module M; end

class A
  include M
end

class B < A; end
class C < B; end

b = B.new

b.is_a?(A) #=> true
b.is_a?(B) #=> true
b.is_a?(C) #=> false
b.is_a?(M) #=> true

b.kind_of?(A) #=> true
b.kind_of?(B) #=> true
b.kind_of?(C) #=> false
b.kind_of?(M) #=> true

## Ruby instance_of? Method

Returns true only if an object is an instance of the specified class. 
It does not consider superclasses or included modules.

instance_of?(class) → true or false

class A; end
class B < A; end
class C < B; end

b = B.new

b.instance_of?(A) #=> false
b.instance_of?(B) #=> true
b.instance_of?(C) #=> false

### Difference

- is_a? / kind_of? checks the object's class, its superclasses, and included modules.
- instance_of? checks only the object's exact class.
