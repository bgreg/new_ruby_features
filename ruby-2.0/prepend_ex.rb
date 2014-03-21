# 1.
# p "Before using prepend. Range comparison for (1..4).include?(2..3) is : #{(1..4).include?(2..3)}"

# 2.
p "Call chain before prepend : #{Range.ancestors}"

module IncludeRangeExt
  # Extends the default Range#include? to support range comparisons.
  def include?(value)
    if value.is_a?(::Range)
      # 1...10 includes 1..9 but it does not include 1..10.
      operator = exclude_end? && !value.exclude_end? ? :< : :<=
      super(value.first) && value.last.send(operator, last)
    else
      super
    end
  end
end

class Range
  prepend IncludeRangeExt
end

# 3. 
# p 'Call chain after prepend : '
# p Range.ancestors

# [IncludeRangeExt, Range, Enumerable, Object, Kernel, BasicObject]
# Module#prepend inserts a module at the beginning of the call chain. It can nicely replace alias_method_chain:

# 4.
p "After prepend : Range comparison for (1..4).include?(2..3) is : #{(1..4).include?(2..3)}"

