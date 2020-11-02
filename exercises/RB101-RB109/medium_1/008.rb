# 8) FIBONACCI NUMBERS (RECURSION):
# The fibonacci series is a sequence of numbers starting with 1 and 1 where
# each number is the sum of the two previous numbers: the 3rd number is
# 1 + 1 = 2, the 4th is 1 + 2 = 3, 5th is 2 + 3 = 5 and so on.  Sequences
# like this translate naturally as "recursive" methods (which call on
# themselves at least once, have a condition which stops the recursion, and
# use the result returned by themselves.)  Write a recursive method that
# computes the total_iterations Fibonacci number, where total_iterations is an argument to the method.
# --------------------------------------------------------------------------- #

def fibonacci(nth)
  return 1 if nth < 3
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

# EXAMPLES: ----------------------------------------------------------------- #
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
