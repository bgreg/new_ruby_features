ruby -w -e "
dquote> def hi
dquote>   hello, world = 'hello, world'.split(', ')
dquote>   world
dquote> end"
-e:3: warning: assigned but unused variable - hello

# Ruby 1.9

ruby -w -e "
dquote> def hi
dquote>   _, x = 'hi, there'.split(', ')
dquote>   x
dquote> end"

# Ruby 2

ruby -w -e "
def hi
  _a, x = 'hi, there'.split(', ')
  x
end"