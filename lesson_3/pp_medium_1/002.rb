# QUESTION 2:
# Why does an error occur in the following code, and what are two possible
# ways to fix it?
#-----------------------------------------------------------------------------#
puts "the value of 40 + 2 is " + (40 + 2)
# `+': no implicit conversion of Integer into String (TypeError)
# This is because 40 and 2 must be converted to be printed with the string

# This can be fixed by converting the result of 40 + 2 to a string with to_s:
puts "the value of 40 + 2 is " + (40 + 2).to_s

# or it's alias, inspect:
puts "the value of 40 + 2 is " + (40 + 2).inspect

# or through string interpolation:
puts "the value of 40 + 2 is #{40 + 2}"