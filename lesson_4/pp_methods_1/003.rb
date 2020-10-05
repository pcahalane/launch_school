# 3) What is the return value of reject in the following code?  Why?
# --------------------------------------------------------------------------- #

[1, 2, 3].reject do |num|
  puts num
end

# --------------------------------------------------------------------------- #
# reject returns a NEW ARRAY containing the items in self for which the given
# block is NOT true

# The block here contains "puts num" which returns a nil value and therefor
# meets the conditions for reject to add each element to the new array which
# will be returned.

# => [1, 2, 3]
