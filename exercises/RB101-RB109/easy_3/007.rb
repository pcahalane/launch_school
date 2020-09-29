# 7) ODD LISTS
# Write a method that returns an Array that contains every other element of
# an Array that is passed in as an argument.  The values in the returned list
# should be those values that are in the 1st, 3rd, 5th, and so on elements of
# the argument Array.
# --------------------------------------------------------------------------- #

def oddities(num_array)
  num_array.select do |num|
    num_array.index(num).even?
  end
end

# --------------------------------------------------------------------------- #
# FURTHER EXPLORATION:
# Write a companion method that returns the 2nd, 4th, 6th, and so on elements
# of an array.
# --------------------------------------------------------------------------- #

def evens(num_array)
  num_array.select do |num|
    num_array.index(num).odd?
  end
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]      # => true
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]   # => true
p oddities(['abc', 'def']) == ['abc']         # => true
p oddities([123]) == [123]                    # => true
p oddities([]) == []                          # => true
