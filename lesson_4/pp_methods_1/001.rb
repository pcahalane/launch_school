# 1) What is the return value of the select method below? Why?
# --------------------------------------------------------------------------- #

p [1, 2, 3].select do |num|
  num > 5
  'hi'
end

# RUBY DOCUMENTATION:
# --------------------------------------------------------------------------- #
# select{ |item| block } -> new_ary
# returns a new array containing all elements of ary for which the given block
# returns a true value (if no block given, enumerator returned instead)
# --------------------------------------------------------------------------- #
# block given at first appears to e false for the given elements, but because
# the string 'hi' is the final line of the block it is inherently truthy and
# therefor each element entered will be added to the new array which will
# return at the end:
# => [1, 2, 3]