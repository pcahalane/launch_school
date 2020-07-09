# PROBLEM: KEYWORD ARGUMENTS

# What does this code print?
5.step(to: 10, by: 3) { |value| puts value }

# Looking at the Numeric class in rubydoc we find step as a class method:
#   step(by: step, to: limit) { |value| puts value}
#   invokes the given block with the sequence of of numbers starting at num,
#   incremented by step (defaulted to 1) on each call.

#   In this problem, we see that we start at 5, increase by 3 to an integer of 10.
# This code will print 5 and 8 (starting value, starting value + 3 = 8 then exit because
# the next step (8 + 3) exceeds our limit of 10.)