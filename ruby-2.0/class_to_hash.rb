Car = Struct.new(:make, :model, :year) do
  def build
    'build'
  end
end

car = Car.new('Toyota', 'Prius', 2014)
p car.to_h

