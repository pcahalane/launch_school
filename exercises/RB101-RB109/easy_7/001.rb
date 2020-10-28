# 1) COMBINE TWO LISTS:
# Write a method that combines two Arrays passed in as arguments, and returns
# a new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.  You may assume that both input Arrays are
# non-empty, and that they have the same number of elements.
# --------------------------------------------------------------------------- #

def interleave(array1, array2)
  combo_size = array1.size + array2.size
  combo_array = []
  index = 0
  
  until combo_array.size == combo_size
    combo_array << array1[index] << array2[index]
    index += 1
  end
  
  combo_array
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']  # => true

# --------------------------------------------------------------------------- #
# FURTHER EXPLORATION:
# Take a few minutes to read about Array#zip; it doesn't do the same thing as
# our interleave method, but is very close, and more flexible.  In fact,
# interleave can be implemented in terms of zip and one other method from the
# Array class.  See if you can rewrite interleave to use zip.

def interzip(array1, array2)
  array1.zip(array2).flatten
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
interzip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']  # => true
