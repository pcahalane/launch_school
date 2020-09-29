# 6) EXCLUSIVE OR
# Write a function named 'xor' that takes two arguments, and returns true if
# exactly one of its arguments is truthy, false otherwise.  Note that we are
# looking for a boolean result instead of a truthy/falsy value as returned by
# || and &&.
# --------------------------------------------------------------------------- #

def xor?(arg1, arg2)
  return true if arg1 && !arg2
  return true if arg2 && !arg1
  false
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
