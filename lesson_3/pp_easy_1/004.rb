# QUESTION 4:
# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ: What do the
# following method calls do (assume we reset numbers to the original array
# between method calls)?
#-----------------------------------------------------------------------------#
numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
# delete_at(index) -> obj or nil
# Deletes the element at the specified index, returning the element (or nil if
# the index is out of range)
# => numbers = [1, 3, 4, 5]

numbers.delete(1)
# delete(obj) -> item or nil
# Deletes all items from self that are equal to obj & returns last deleted
# item (or nil if no matching item found)
# numbers = [2, 3, 4, 5]