class Invoice

  def self.print_items
    "inside class method"
  end

  def add_item
    "inside instance method"
  end

end

p Invoice.print_items

i = Invoice.new
p i.add_item

