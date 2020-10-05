# 2) How does count treat the block's return value? How can we find out?
# --------------------------------------------------------------------------- #

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# --------------------------------------------------------------------------- #
# RUBY DOCUMENTATION:
# count { |item| block } -> int
# Returns the number of elements; if an argument is given, counts the number
# of elements which equal obj using ==.  If a block is given, counts the
# number of elements for which the block returns a true value.
# --------------------------------------------------------------------------- #
# count considered the 'truthiness' of the block given and if true increments
# the count

# number of strings over 4 characters in length => 1