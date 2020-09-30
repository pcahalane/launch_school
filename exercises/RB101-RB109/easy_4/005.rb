# 5) MULTIPLES OF 3 & 5:
# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples. (You
# may assume the integer passed in is > 1)
# --------------------------------------------------------------------------- #

def multisum(num)
  nums_array = (1..num).to_a
  nums_array.reject! do |number|
    number % 3 != 0 && number % 5 != 0
  end
  sum_num = 0
  nums_array.each do |number|
    sum_num += number
  end
  sum_num
end

# --------------------------------------------------------------------------- #
# FURTHER EXPLORATION:
# Investigate the Enumerable.inject; how might it be useful in solving this
# problem?  Try writing a solution; which is clearer, more succinct?
# --------------------------------------------------------------------------- #
# Rubydocs: inject { |memo, obj| block } -> obj
# Enumerable.inject combines all elements of enum by applying a binary
# operation, specified by a block or a symbol that names a method or operator.
# If a block is specified, for each element in enum the block is passed an
# accumulator value (memo) and the element; if a symbol is specified instead,
# each element in the collection will be passed to the named method of memo and
# the result becomes the new value for memo.  At the end of the iteration, the
# final value of MEMO is the return value for the method.  If no initial value
# is specified for memo, then the first element of collection is used instead.
# --------------------------------------------------------------------------- #
# Using Enumerable.inject gave the advantage of much more succint code which
# is fairly easy to read and also eliminated the need for establishing new
# variables within the method.  However, due to how .inject treats our memo,
# sum, when no initial value is specified, decided to write the range
# beginning at 0 rather than 1 as beginning at 1 as we did in the code above
# caused the initial operation to be 1 + 1 as the first value will be used for
# the memo starting value if none is given.
# --------------------------------------------------------------------------- #

def multisum(num)
  (0..num).inject { |sum, n| (n % 5 == 0 || n % 3 == 0) ? (sum + n) : (sum + 0)}
end

# --------------------------------------------------------------------------- #
# EXAMPLES (all should output 'true')
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
