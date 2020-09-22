# QUESTION 3:
#-----------------------------------------------------------------------------#
# The following method is meant to show all factors of the input number,
# however it will fail if the input is 0 or negative.  Make the method work
# WITHOUT using begin/end/until.  (The goal is not to find factors for 0 or
# negatives but to handle the errors well)
#-----------------------------------------------------------------------------#

def factors(number)
  divisor = number
  factors = []
  while divisor >= 1
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(-10)

#-----------------------------------------------------------------------------#
# BONUS:
# What is the purpose of 'number % divisor == 0 ?'
#-----------------------------------------------------------------------------#
# Executes the preceding code if the the remainder of dividing the number
# passed into the method by divisor is equal to 0 (if dividing them will
# produce a whole number)

#-----------------------------------------------------------------------------#
# BONUS 2:
# What is the purpose of line 8 in the original method? (factors)
#-----------------------------------------------------------------------------#
# The purpose is to return the value of 'factors' as the result of calling the
# method; without it the method will not return a meaningful value (returns
# nil)
