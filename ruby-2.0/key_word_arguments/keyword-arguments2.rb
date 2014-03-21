
def cycle(x, *y, name: 'default', **z)
  puts x
  puts y
  puts name
  puts z
end


# 1 In Ruby 2.0.0, keyword arguments must have defaults
# cycle(1,2)

# 1
# 2
# default
# {}


# 2
# cycle(1,2, name: 'numbers')

# 1
# 2
# numbers
# {}

# 3
cycle(1,2, 3, a: 'pen', b: 'cecil')

# 1
# 2
# numbers
# {:a=>"pen", :b=>"cil"}