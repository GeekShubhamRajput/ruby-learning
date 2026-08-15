## Module Within Module

# Ruby allows you to define a module inside another module. This is useful for organizing 
# related functionality and avoiding name conflicts.

# company/employee/user.rb
module Company
  module Employee
    class User
      def role
        "Employee User"
      end
    end
  end

  module Customer
    class User
      def role
        "Customer User"
      end
    end
  end
end

employee = Company::Employee::User.new
customer = Company::Customer::User.new

puts employee.role  # Employee User
puts customer.role  # Customer User
