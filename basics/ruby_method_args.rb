## Ways to pass args in ruby method

## 1. Basic Args

def full_name(first_name, last_name)
  first_name + " " + last_name
end
p full_name('Shubham', 'Rajput')

       #OR 

def full_name first_name, last_name
  first_name + " " + last_name
end
p full_name 'Shubham', 'Rajput'


## 2. Named Args
# it works fine if you even changed the sequence of args.

def print_address(city:, state:, pincode:)
  p city
  p state
  p pincode
end
print_address(city: 'Indore', state: 'MP', pincode: '452016')
print_address(state: 'MP', city: 'Indore', pincode: '452016')


## 3. Default Args
def print_car_model model='SUV'
  p model
end
print_car_model 'Tata'
print_car_model #=> print default value(suv)


## 4. Splat Args
# A parameter with the splat operator allows us to work with an undefined(unknown) number of arguments.
# A parameter with the splat operator converts the arguments to an array within a method
# A method can’t have two parameters with splat operator
# A parameter with the splat operator is optional

def company_list *companies
  puts companies
end
company_list "Google", "Apple", "GitHub"
company_list

## 5. Keyword Args
def user_registration(email, password, **extra_args)
  puts "Creating user with email: #{email}"
  puts "User Role is: #{extra_args[:role]}" if extra_args[:role]
  puts "User Department is: #{extra_args[:department]}" if extra_args[:department]
end
user_registration("rajput.shubh1993@gmail.com", "asdff", role: 'Admin', department: 'Engineering')
