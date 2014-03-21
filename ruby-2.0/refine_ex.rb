module IncludeRangeExt
  refine Range do
    # Extends the default Range#include? to support range comparisons
    def include?(value)
      if value.is_a?(::Range)
        operator = exclude_end? && !value.exclude_end? ? :< : :<=
        super(value.first) && value.last.send(operator, last)
      else
        super
      end
    end
  end
end

# p (1..4).include?(2..3)

using IncludeRangeExt

p (1..4).include?(2..3)
