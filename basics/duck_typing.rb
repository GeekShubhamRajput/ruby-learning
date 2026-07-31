# Ruby Duck Typing 
# Duck Typing is a concept in Ruby where an object's behavior matters more than its class.
# Ruby doesn't care what type of object it is. If an object responds to the required method, 
# it can be used. If it walks like a duck and quacks like a duck, it's a duck.
# NotificationService doesn't care what kind of object it receives. 
# It only cares that the object can respond to the notify method.

class EmailNotifier
  def notify(message)
    puts "Email: #{message}"
  end
end

class SmsNotifier
  def notify(message)
    puts "SMS: #{message}"
  end
end

class PushNotifier
  def notify(message)
    puts "Push: #{message}"
  end
end

class NotificationService
  def send_notification(notifier, message)
    notifier.notify(message)
  end
end

service = NotificationService.new

service.send_notification(EmailNotifier.new, "Order Placed")
service.send_notification(SmsNotifier.new, "Order Placed")
service.send_notification(PushNotifier.new, "Order Placed")
