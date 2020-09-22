# QUESTION 4:
#-----------------------------------------------------------------------------#
# The given method is a rolling buffer; elements are added to it and once full
# new elements will replace the oldest elements in the buffer.  Consider
# whether there is a difference using '<<' or '+' in the code below:
#-----------------------------------------------------------------------------#

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# '<<' : ary << obj -> ary
# Append pushes the given object on the end of the array and returns the array
# itself, so several appends may be chained together.

# '+' : ary + other_ary -> new_ary
# Concatenation - returns a new array built by concatenating the two arrays
# together to produce a third array.

# '<<' will mutate and return the given array while '+' will create a new
# array.  In the code above, rolling_buffer1 will mutate the 'buffer' array
# while rolling_buffer2 will not.