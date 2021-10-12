## RubyModule

# Modules are a way of grouping together methods, classes, and constants.

module Sale
  def self.sell
    puts "I am inside module..." 
  end
end

Sale.sell

## Nested Module

module Sale
  module Product
    def self.sell
      puts "I am inside product..." 
    end
  end
end

Sale::Product.sell

## More capabilities

module Attire

  class << self

    def total_price(params)
      base_amount = params[:price]
      tax_amount = base_amount * tax_rate(params[:state])
      base_amount + tax_amount 
    end

    private

      def tax_rate(category)
        if category == 'MP'
          0.065
        elsif category == 'GJ'
          0.050
        end
      end
  end
end
product_params = { price: 150, state: 'GJ'}
p Attire.total_price(product_params)

