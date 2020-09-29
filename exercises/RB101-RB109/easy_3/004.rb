# 4) MULTIPLYING TWO NUMBERS
# Create a method that takes two arguments, multiplies them together, and
# returns the result.
# --------------------------------------------------------------------------- #

def multiply(num1, num2)
  num1 * num2
end

# --------------------------------------------------------------------------- #
# EXAMPLE:
# multiply(5, 3) == 15
# --------------------------------------------------------------------------- #
# FURTHER EXPLORATION:
# Using the * operator behaves differently depending on what the left hand
# expression is (ie. "hi" * 2 == "hihi").  What happens if the first argument
# is an Array?
# --------------------------------------------------------------------------- #
# Just as the multiplier affects a string by multiplying the number of times
# that string appears (ie. hi * 2 == "hi" twice, "hihi"):

# multiply([1, 2, 3], 3)
# => [1, 2, 3, 1, 2, 3, 1, 2, 3]
