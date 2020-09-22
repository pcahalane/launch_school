# QUESTION 5:
#-----------------------------------------------------------------------------#
# Depending on a method to modify its arguments is tricky:

def tricky_method(a_string_param, an_array_param)
 a_string_param += "rutabaga"
 an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#-----------------------------------------------------------------------------#
# Whether the code above "coincidentally" does what we think we wanted
# "depends" on what is going on inside the method. How can we refactor
# this practice problem to make the result easier to predict and easier for the
# next programmer to maintain?
#-----------------------------------------------------------------------------#

def less_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = less_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
