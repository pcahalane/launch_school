# 2) ROTATION (PART 2):
# Write a method that can rotate the last n digits of a number.  (Recommended
# to use the method from the previous exercise & assume n is always a
# positive integer.)
# --------------------------------------------------------------------------- #

def rotate_array(array)
  array.values_at(1..-1, 0)
end

# --------------------------------------------------------------------------- #

def rotate_rightmost_digits(num, digits)
  static_digits = num.to_s.length - digits
  string = ""
  
  string << num.to_s[0..(static_digits - 1)] if static_digits > 0
  string << rotate_array(num.to_s.chars[-digits..-1]).join("")
  
  string.to_i
end

# EXAMPLES: ----------------------------------------------------------------- #
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
