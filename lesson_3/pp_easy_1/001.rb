# QUESTION 1
# What would you expect the code below to print out?
#-----------------------------------------------------------------------------#
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers # =>
# 1
# 2
# 2
# 3

# This will display the elements of the original array 'numbers' (#uniq does
# not mutate the original array when called)