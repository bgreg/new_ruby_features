# Ruby 2.1

module CurrencyDecorator
  refine Numeric do
    def to_currency
      sprintf("%s%0.2f", "$", self)
    end
  end
end

class Currency
  using CurrencyDecorator

  def initialize(numeric)
    @number = numeric.to_f.to_currency
  end
end


# irb(main): > load 'currency_decorator.rb'
# => true
# irb(main): > c = Currency.new 45.88
# => #<Currency:0x000001020bb208 @number="$45.88">

# irb(main): > 748.9.to_currency
# NoMethodError: undefined method `to_currency' for 748.9:Float
#   from (irb):9
#   from /Users/bparanj/.rvm/rubies/ruby-2.1.0/bin/irb:11:in `<main>'