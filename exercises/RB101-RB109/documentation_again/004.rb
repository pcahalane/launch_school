# PROBLEM: MANDATORY BLOCKS
# The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can.
# Assume you have the following code:
a = [1, 4, 8, 11, 15, 19]
# How would you search this Array to find the first element whose value exceeds 8?

#SOLUTION:
#   Looking at the array class rubydoc we see that array#bsearch uses a binary search to find a value
# from the array which meets the given condition:
a.bsearch {|num| num > 8 } # => 11 