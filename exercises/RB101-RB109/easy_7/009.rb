# 9) MULTIPLY ALL PAIRS: ---------------------------------------------------- #
# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays.
# the results should be sorted by increasing value.  You may assume neither
# argument is an empty Array.
# --------------------------------------------------------------------------- #

def multiply_all_pairs(arr1, arr2)
  arr2_iteration = 0
  product_array = []
  
  arr1.each do |num|
    until arr2_iteration == arr2.count
      product_array << num * arr2[arr2_iteration]
      arr2_iteration += 1
    end
  arr2_iteration = 0
  end
  product_array.sort!
end

# EXAMPLES: ----------------------------------------------------------------- #
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
