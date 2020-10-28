# 4) COUNTING UP: ----------------------------------------------------------- #
# Write a method that takes an integer argument, and returns an Array of all
# integers, in sequence, between 1 and the argument.  You may assume that the
# argument will always be a valid integer that is greater than 0.
# --------------------------------------------------------------------------- #

def sequence(num)
  num > 0 ? ((1..num).to_a) : ((num..-1).to_a)
end

# EXAMPLES: ----------------------------------------------------------------- #
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
