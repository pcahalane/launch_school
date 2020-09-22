# QUESTION 2:
# Describe the difference between ! and ? in Ruby.
#-----------------------------------------------------------------------------#
# ! the bang symbol is an indicator of a method that mutates (though may not
# present in all mutating methods)
# ? indicates a predicate method which returns true or false

#-----------------------------------------------------------------------------#
# Explain what would happen in the following scenarios:
#-----------------------------------------------------------------------------#
# 1. what is != and where should you use it?
# A public instance method which returns true if two objects are not equal
# This could be used in a scenario where you want to direct the method to break
# if a certain requirement is not met (ie. if secret_code != user_input break)

# 2. put ! before something, like !user_name
# Will return the opposite of the boolean returned by user_name

# 3. put ! after something, like words.uniq!
# Indicate the method mutates; in the case of uniq instead of returning a copy
# of the array it will assign a new object in place of the given array

# 4. put ? before something
# When a ? is placed before something it is being used as a ternery operator
# for if...else (if_this_condition_true ? then_do_this : else do this)

# 5. put ? after something
# Indicates the method will return a boolean (depends on method implementaion)

# 6. put !! before something, like !!user_name
# Will turn the object into the boolean equivilant