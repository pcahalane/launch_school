# 3) ROTATION (PART 3):
# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining
# digits, you get 329175.  Keep the first 2 digits fixed in place and rotate
# again to 321759.  Keep the first 3 digits fixed in place and rotate again
# to get 321597.  Finally, keep the first 4 digits fixed in place and rotate
# the final 2 digits to get 321579.  The resulting number is called the
# maximum rotation of the original number.  Write a method that takes an
# integer as an argument, and returns the maximum rotation of that argument.
# (Recommended to use the rotate_rightmost_digits method from the previous
# exercise; you do not have to handle multiple 0s.)
# --------------------------------------------------------------------------- #

def rotate_array(array)
  array.values_at(1..-1, 0)
end

# --------------------------------------------------------------------------- #

def max_rotation(num)
  placeholder = num.to_s
  fixed_nums = ""
  
  until placeholder.empty?
    placeholder = rotate_array(placeholder.chars).join("")
    fixed_nums << placeholder[0]
    placeholder[0] = ""
  end
  
  fixed_nums.to_i
end

# EXAMPLES: ----------------------------------------------------------------- #

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845
