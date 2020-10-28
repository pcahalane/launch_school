# 8) SEQUENCE COUNT: -------------------------------------------------------- #
# Create a method that takes two integers as arguments.  The first argument
# is a count, and the second is the first number of a sequence that your
# method will create.  The method should return an Array that contains the
# same number of elements as the count argument, while the values of each
# element will be multiples of the starting number.  You may assume that the
# count argument will always have a value of 0 or greater, while the starting
# number can be any integer value.  If the count is 0, an empty list should
# be returned.
# --------------------------------------------------------------------------- #

def sequence(count, startnum)
  sequence_array = []
  multiple = 1
  
  until count == 0
    sequence_array << startnum * multiple
    count -= 1
    multiple += 1
  end
  
  sequence_array
end

# EXAMPLES: ----------------------------------------------------------------- #
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
