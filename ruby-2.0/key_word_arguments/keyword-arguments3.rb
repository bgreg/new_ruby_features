# def name({required_arguments, ...}
#          {optional_arguments, ...}
#          {*rest || additional_required_arguments...} # Did you know?
#          {keyword_arguments: "with_defaults"...}
#          {**rest_of_keyword_arguments}
#          {&block_capture})
class C
  def hi(needed, needed2,
         maybe1 = "42", maybe2 = maybe1.upcase,
         *args,
         named1: 'hello', named2: a_method(named1, needed2),
         **options,
         &block)
  end

  def a_method(a, b)
    # ...
  end
end

p C.instance_method(:hi).parameters

#[[:req, :needed], [:req, :needed2], 
# [:opt, :maybe1], [:opt, :maybe2], 
# [:rest, :args], 
# [:key, :named1], [:key, :named2], 
# [:keyrest, :options], 
# [:block, :block]]