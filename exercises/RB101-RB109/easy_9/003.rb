# 3) ALWAYS RETURN NEGATIVE: ------------------------------------------------ #
# Write a method that takes a number as an argument; if the argument is a
# positive number, return the negative; if the number is 0 or negative,
# return the original number.
# --------------------------------------------------------------------------- #

def negative(num)
  num > 0 ? (-num) : (num)
end

# EXAMPLES: ----------------------------------------------------------------- #
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby
