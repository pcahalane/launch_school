# PROBLEM: INCLUDED MODULES

# !NOTE: USE DOCUMENTATION FOR RUBY 2.3.0 FOR THIS EXERCISE!
# Use irb to run the following code:

a = [5, 9, 3, 11]
puts a.min

# Find the documentation for the #min method and change the
# above code to print the two smallest values in the Array.

# SOLUTION:
# Begin by looking at rubydoc Enumerable#min:
#   min(n) -> array
#   Returns the object in enum with the minimum value.
#   If you pass an arguement through n, a minimum of n elements are returned
#   if we pass 2 as an argument to min it will puts the two smallest values:
puts a.min(2)