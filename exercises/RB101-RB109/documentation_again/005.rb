# PROBLEM: MULTIPLE SIGNATURES

# What do each of these puts statements output?
a = %w(a b c d e)

puts a.fetch(7)
  # fetch(index) -> obj
  # this will throw an IndexError (the referenced index, 7, lies outside the array bounds)
puts a.fetch(7, 'beats me')
  # fetch(index, default) -> obj
  # this will print 'beats me' as the second argument is supplying a value to default to
  # when unable to reference index 7 yet again
puts a.fetch(7) { |index| index**2 }
  # fetch(index) {|index| block} -> obj
  # this will print the result of the code in the block (49) by default when unable to
  # reference index 7 yet again

#   Initially started by looking at rubydoc Array class method fetch;
# tries to return the element at position index, but throws an IndexError exception
# if the referenced index lies outside of the array bounds (as in line 6).
# This error can be prevented by supplying a second argument, which will act as a
# default value (as in line 7).  If a block is given, it will only be executed when
# an invalid index is referenced (as in line 8).