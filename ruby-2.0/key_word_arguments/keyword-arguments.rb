
def cycle(x, *y, name: 'default')
  puts x
  puts y
  puts name
end

# 1
# cycle('odd', 'even')

# Output 
# odd
# even
# default
# --------------------------------------------
# y is Array

# 2. Keywords are enforced
cycle('odd', 'even', name: 'highlight')
# keyword-arguments.rb:6:in `<main>': unknown keyword: nmae (ArgumentError)


# Likely Question
# 1. What does * mean in *y
#    Example to illustrate *
# cycle('odd', [1,2,3,4])

# odd
# 1
# 2
# 3
# 4
# default