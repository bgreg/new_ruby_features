

class Foo
  def initialize(a:, b: 1)
    @a = a
    @b = b
  end
end

begin
  f = Foo.new(b: 2)
  p f
rescue => e
    p e.class
  p e.message
end
# missing keyword a

# f = Foo.new(b: 2, a: 1)
# 
# p f