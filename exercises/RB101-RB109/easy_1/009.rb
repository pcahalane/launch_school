# PROBLEM: SUM OF DIGITS

# Write a method that takes one argument, a positive integer, and returns the
# sum of its digits.  For a challenge, try writing this without any basic
# looping constructs (while, until, loop, and each).

# METHOD:
def sum(num)
  num.to_s.split('').map(&:to_i).reduce(:+)
end

# EXAMPLES:
puts sum(23)  == 5          # => true
puts sum(496) == 19         # => true
puts sum(123_456_789) == 45 # => true