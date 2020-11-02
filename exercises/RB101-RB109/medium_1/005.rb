# 5) DIAMONDS!:
# Write a method that displays a 4-pointed diamond in an n x n grid, where n
# is an odd integer that is suplied as an argument to the method.  You may
# assume that the argument will always be an odd integer.
# --------------------------------------------------------------------------- #

def diamond(size)
  inner_width = 1
  inner_contents = ""
  current_half = "upper"

  size.times do
    inner_contents = ("*" * inner_width)
    p inner_contents.center(size, ' ')

    current_half = "lower" if inner_width == size
    break if current_half == "lower" && inner_width == 1

    case current_half
    when "upper" then inner_width += 2
    when "lower" then inner_width -= 2
    end
  end
end

# EXAMPLES: ----------------------------------------------------------------- #
diamond(1)
# =>
# *

diamond(3)
#  *
# ***
#  *

diamond(9)
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *