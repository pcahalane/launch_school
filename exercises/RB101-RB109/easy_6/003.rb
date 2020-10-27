# 3) FIBONACCI NUMBER LOCATION BY LENGTH:
# The fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition, and each subsequent
# number is the sum of the two previous numbers.  Write a method that
# calculates and returns the index of the first Fibonacci number that has
# the number of digits specified as an argument.  (The first Fibonacci number
# has index 1.)  Assume the argument is always greater than or equal to 2.
# --------------------------------------------------------------------------- #

def find_fibonacci_index_by_length(num_length)
  fibonacci_array = [1, 1, 2, 3, 5, 8, 13]
  previous_num = 8
  current_num = 13
  
  until current_num.to_s.length == num_length
    next_num = previous_num + current_num
    previous_num = current_num
    current_num = next_num
    fibonacci_array << current_num
  end
  
  fibonacci_array.index(current_num) + 1
  
end

# --------------------------------------------------------------------------- #
# EXAMPLES:

p find_fibonacci_index_by_length(2) == 7          # => 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # => 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
