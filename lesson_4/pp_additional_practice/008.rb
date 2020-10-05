# 8) What happens when we modify an array while we are iterating over it?
# --------------------------------------------------------------------------- #
# If the object being iterated over is modified during mutation, it can cause
# unexpected or unintended effects.
# --------------------------------------------------------------------------- #
# What would be output by this code?
# --------------------------------------------------------------------------- #

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

#   Array#shift(n) -> new array
#     (removes first elment of array and returns an array of the first n
#     elements or less)

# 1st iteration:
#   print numbers[0] => '1'
#     numbers = [2, 3, 4]

# 2nd iteration:
#   print numbers[2] => '3'
#     numbers = [3, 4]

# iteration will end here as numbers only contains 2 elements and has no third
# element to attempt to iterate over.

# --------------------------------------------------------------------------- #
# What would be output by this code?
# --------------------------------------------------------------------------- #

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

#   Array#pop(n) -> array
#   (removes the last element from self and returns an array of
#   the last (n) elements (or less)

# 1st iteration:
#   print numbers[0]: => 1
#   number = [1, 2, 3]

# 2nd iteration:
#   print numbers[1]: => 2
#   number = [1, 2]

# end of iteration
