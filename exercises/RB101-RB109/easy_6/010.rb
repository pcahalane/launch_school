# 10) RIGHT TRIANGLES:
# Write a method that takes a positive integer, n, as an argument, and
# displays a right triangle whose sides each have n stars.  The hypotenuse
# of the triangle (the diagonal side in the images below) should have one end
# at the lower-left hand of the triangle, and the other at the upper-right.
# --------------------------------------------------------------------------- #

def triangle(side_length)
  current_line = 1
  until current_line > side_length
    p " " * (side_length - current_line) + "*" * current_line
    current_line += 1
  end
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
triangle(5)
# =>
#    *
#   **
#  ***
# ****
#*****

triangle(9)
# =>
#        *
#       **
#      ***
#     ****
#    *****
#   ******
#  *******
# ********
#*********
