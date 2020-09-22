# QUESTION 3:
#-----------------------------------------------------------------------------#
# Call a method, passing both a string and an array as parameters and see how
# even though they are treated in the same way by Ruby, the results can be 
# different. Study the following code and state what will be displayed and why:
#-----------------------------------------------------------------------------#

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  # concatenates & returns a NEW string containing both
  # (because it's reassignment & a new string, will not affect my_string)
  an_array_param << "rutabaga"
  # append - pushes the given object on to the end of this array
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# => "pumpkins"
puts "My array looks like this now: #{my_array}"
# => ["pumpkins, rutabaga"]
