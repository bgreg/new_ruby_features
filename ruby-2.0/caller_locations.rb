# p RUBY_VERSION

class TestBed
  def foo
    me
  end
  
  def me
    meaning_of_life
  end
  
  def meaning_of_life
    # caller_locations(1,1)[0]
    p caller_locations(1,5)
    # .label --> provides only the method name
  end
end

t = TestBed.new
p t.me