# 1) SUM OF SUMS: ----------------------------------------------------------- #
# Write a method that takes an Array of numbers and then returns the sum of
# the sum of the sums of each leading subsequence for that Array.  You may
# assume that the Array always contains at least one number.
# --------------------------------------------------------------------------- #

def sum_of_sums(array)
  counter = 1
  sum = 0
  
  until counter > array.count
    array.slice(0, counter).each do |num|
      sum += num
    end
  counter += 1
  end
  
  p sum
end

# EXAMPLES: ----------------------------------------------------------------- #
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
