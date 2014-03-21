range = 1..Float::INFINITY

# 1
# p range.collect { |x| x*x }.first(2)

# 2

# p range.lazy.collect {|x| x*x }.first(10)

# 3

# p range.size
# p range.lazy.size 
# p range.lazy.collect {|x| x*x }.first(10).size

# 4 : SKIP
# range = 1..10
# enum = range.collect
# p enum
# 
# p enum.each { |x| x*x }

# p (1..100).to_a.permutation(4).size
# p loop.size
# p (1..100).drop_while.size

fib = Enumerator.new(Float::INFINITY) do |y|
  a = b = 1
  loop do
    y << a
    a, b = b, b+a
  end
end

# 5
lazy = fib.lazy.take(1_000_000).drop(42)
p lazy.size



