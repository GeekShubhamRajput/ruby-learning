# A protected method in Ruby can be called only by the object itself or another 
# object of the same class (or subclass). It cannot be called directly from outside the class.

# When to use protected:
# Use protected when objects of the same class need to access each other's 
# internal data (e.g., comparing salaries, ages, balances, or scores) while preventing 
# outside code from accessing that data directly.

class Employee

  def initialize(salary)
    @salary = salary
  end

  def salary_comparison(other_employee)
    salary > other_employee.salary ? "Salary is higher" : "Salary is lower"
  end

  protected

  def salary
    @salary
  end
end

emp1 = Employee.new(50000)
emp2 = Employee.new(40000)

puts emp1.salary_comparison(emp2)
# Salary is higher

puts emp1.salary
# NoMethodError: protected method `salary' called

class Manager < Employee
end

manager = Manager.new(1000)
puts manager.salary_comparison(emp1)
# Salary is lower
