# 6) ODD NUMBERS
#-----------------------------------------------------------------------------#
# Print all odd numbers 1 through 99, inclusive.  All numbers should print on
# separate lines.
#-----------------------------------------------------------------------------#

(1..99).to_a.each do |num|
  puts num if num.odd?
end

#-----------------------------------------------------------------------------#
# FURTHER EXPLORATION: Repeat this exercise with a technique different from
# the one you just used, and different from the solution shown above.  You may
# want to explore the use Integer#upto or Array#select methods, or maybe use
# Integer#odd?
#-----------------------------------------------------------------------------#

1.upto(99).select do |num|
  puts num if num % 2 != 0
end

