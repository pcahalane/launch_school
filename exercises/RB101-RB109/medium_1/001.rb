# 1) ROTATION (PART 1): ----------------------------------------------------- #
# Write a method that rotates an array by moving the first element to the end
# of the array.  The original array should not be modified.
# --------------------------------------------------------------------------- #

def rotate_array(array)
  array.values_at(1..-1, 0)
end

# EXAMPLES: ----------------------------------------------------------------- #

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

# FURTHER EXPLORATION: ------------------------------------------------------ #
# Write a method that rotates a string instead of an array; do the same for
# integers.  You may use rotate_array from inside your new methods.
# --------------------------------------------------------------------------- #

def rotate_string(string)
  rotate_array(string.chars).join("")
end

def rotate_integer(num)
  rotate_string(num.to_s).to_i
end

# EXAMPLES: ----------------------------------------------------------------- #

rotate_string("this is a test, testing") == "his is a test, testingt"
rotate_string("Seems to be working...!") == "eems to be working...!S"

rotate_integer(12345) == 23451
rotate_integer(1985) == 9851
