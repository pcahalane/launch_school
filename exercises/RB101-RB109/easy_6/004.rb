# 4) REVERSED ARRAYS (PART 1)
# Write a method that takes an Array as an argument, and reverses its
# elements in place; that is, mutate the Array passed into this method.  The
# return value should be the same Array object. (You may not use #reverse
# or #reverse!)
# --------------------------------------------------------------------------- #

def flipperoo(array)
  placeholder = []
  
  array.each do |element|
    placeholder.unshift(element)
  end
  
  array.each_index do |index|
    array[index] = placeholder[index]
  end
end

# --------------------------------------------------------------------------- #
# EXAMPLE:
list1 = [1,2,3,4]
result = flipperoo(list1)
result == [4, 3, 2, 1]                        # => true
list1 == [4, 3, 2, 1]                         # => true
list1.object_id == result.object_id           # => true

list2 = %w(a b e d c)
flipperoo(list2) == ["c", "d", "e", "b", "a"] # => true

list3 = ['abc']
flipperoo(list3) == ["abc"]                   # => true
list3 == ["abc"]                              # => true

list4 = []
flipperoo(list4) == []                        # => true
list4 == []                                   # => true
