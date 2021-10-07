## Inheritance in Ruby

# Inheritance allows the programmer to inherit the characteristics of one class into another class.
# SubClass < SuperClass

class MobilePhone
  def calling
    puts "I am calling..."
  end
end

class NokiaPhone < MobilePhone
end

class SamsungPhone < MobilePhone
end

mobile_phone = MobilePhone.new
mobile_phone.calling

nokia_phone = NokiaPhone.new
nokia_phone.calling

samsung_phone = SamsungPhone.new
samsung_phone.calling 
