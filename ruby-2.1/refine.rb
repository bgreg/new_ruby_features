module Permalinker
    def linkify(string)
      string.downcase.split.join('=')
    end
end

class Car
  prepend Permalinker
  
  def initialize(title)
    @title = title
  end
  
  def permalink
    linkify(@title)
  end
end

# 2.1.0 > load 'refine.rb'
#  => true 
# 2.1.0 > car = Car.new("Refinements are great")
#  => #<Car:0x000001010431f0 @title="Refinements are great"> 
# 2.1.0 > car.permalink
#  => "refinements-are-great" 
# 
# 2.1.0 > 'Refinements are scoped'.permalink
#  NoMethodError: undefined method `permalink' for "Refinements are scoped":String
#    from (irb):9
#    from /Users/bparanj/.rvm/rubies/ruby-2.1.0/bin/irb:11:in `<main>'


