# Ruby 2.1

# Runs in Ruby 2.1
class Car
  def initialize(make, model: 'Corolla')
    @make = make
    @model = model
  end
end

car = Car.new(model: 'Prius')

# Enumerable to_h

➜  ext  irb
2.0.0 > a = (1..10).collect{|x| [x, (x *2)]}
 => [[1, 2], [2, 4], [3, 6], [4, 8], [5, 10], [6, 12], [7, 14], [8, 16], [9, 18], [10, 20]] 
2.0.0 > a.to_h
NoMethodError: undefined method `to_h' for #<Array:0x0000010300f8f8>
	from (irb):2
	from /Users/bparanj/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
  

  
2.1.0  > (1..10).collect{|x| [x, (x * 2)]}
   => [[1, 2], [2, 4], [3, 6], [4, 8], [5, 10], [6, 12], [7, 14], [8, 16], [9, 18], [10, 20]] 
2.1.0  > a = (1..10).collect{|x| [x, (x * 2)]}
   => [[1, 2], [2, 4], [3, 6], [4, 8], [5, 10], [6, 12], [7, 14], [8, 16], [9, 18], [10, 20]] 
2.1.0  > a
   => [[1, 2], [2, 4], [3, 6], [4, 8], [5, 10], [6, 12], [7, 14], [8, 16], [9, 18], [10, 20]] 
2.1.0  > a.to_h
   => {1=>2, 2=>4, 3=>6, 4=>8, 5=>10, 6=>12, 7=>14, 8=>16, 9=>18, 10=>20}
   
# Array
 
2.1.0 > [[:name, :age], ['Matz', 48]].to_h
 => {:name=>:age, "Matz"=>48} 