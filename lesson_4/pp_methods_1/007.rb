# 7) What is the return value of the BLOCK in the following code?  How is it
# determined?  Also, what is the return value of 'any?' in this code and what
# does it output?
# --------------------------------------------------------------------------- #

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# --------------------------------------------------------------------------- #
# BLOCK return value:
# The return value of the block is dependent on the final line which is
# num.odd? ; the Integer#odd method returns true if the integer is odd, or
# false if not.


# 'any?' return value:
# Enumerable#any? passes each element of the collection to the given block and
# returns true if the block ever returns a value besides false or nil.
# (because it will encounter a 'true' value during the iteration of the first
# element it will stop iterating at this point and return true for .any?)