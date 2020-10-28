# 7) MULTIPLICATIVE AVERAGE: ------------------------------------------------ #
# Write a method that takes an Array of integers as input, multiplies all the
# numbers together, divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places.  Assume the Array
# is not empty.
# --------------------------------------------------------------------------- #

def show_multiplicative_average(nums_array)
  result = 1
  nums_array.each do |num|
    result *= num
  end
  result = (result.to_f / nums_array.count ).round(3)
  p "The result is #{format('%.3f', result)}"
end

# EXAMPLES:------------------------------------------------------------------ #
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
