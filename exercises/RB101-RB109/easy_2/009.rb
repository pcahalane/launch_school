# 9) STRING ASSIGNMENT
#-----------------------------------------------------------------------------#
# What does the following code print out?
#-----------------------------------------------------------------------------#
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# => Alice
# => Bob

#-----------------------------------------------------------------------------#
# This is because save_name = name on line 5 assigns the 'Bob' object to the
# save_name variable, not the 'name' variable itself, it is not affected when
# name is reassigned to a new object.
#-----------------------------------------------------------------------------#
# What does the following code print out?  Can you explain the results?
#-----------------------------------------------------------------------------#

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# => BOB
# => BOB

#-----------------------------------------------------------------------------#
# In this example name and save_name both point to the same 'Bob' string object
# when line 23 is executed; upcase! mutates the original string object 'Bob'
# and therefor we should expect to see both name and save_name reflect the
# upcase change.