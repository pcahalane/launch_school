# QUESTION 4:
#-----------------------------------------------------------------------------#
# Now, let's have the string show a modified output, while the array thwarts
# the method's efforts to modify the caller's version of it.
#-----------------------------------------------------------------------------#

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  # Appends the given object to str/original object
  an_array_param = ['pumpkins', 'rutabaga']
  # Assigns a new object to local variable an_array_param (but not my_array)
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# "pumpkinsrutabaga"
puts "My array looks like this now: #{my_array}"
# ["pumpkins"]

