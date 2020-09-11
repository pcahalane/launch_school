# PROBLEM: ARRAY AVERAGE

#   Write a method that takes one argument, an array containing integers, and returns the
# average of all numbers in the array.  The array will never be empty and the numbers will
# always be positive integers.

# METHOD:
def average(num_arr)
  num = 0
  counter = 0
  num_arr.each do |ele|
    num += ele
    counter += 1
  end
  num / counter
end

# EXAMPLES:
puts average([1, 5, 87, 45, 8, 8]) == 25            # => true
puts average([9, 47, 23, 95, 16, 52]) == 40         # => true
