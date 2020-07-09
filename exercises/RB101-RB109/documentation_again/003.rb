# PROBLEM: DEFAULT ARGUMENTS IN THE MIDDLE
# Consider the following method and a call to that method and
# use the ruby documentation to determine what it will print:
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6,)


# MY INVESTIGATION:
#   We can see that my_method accepts up to four arguements, with b and c assigned default values;
# at least two arguments are required due to a and d not being assigned default values.
#   Rubydoc syntax page for method >> arguments >> Default Values does talk about assignment 
# of default values, but did not lead to any knowledge on how it handled overwriting them.

# Next started testing in irb:
#   my_method(4) => ArgumentError (wrong number of arguments (given 1, expected 2..4))
#   my_method(4, 5) => [4, 2, 3, 5] 
#   my_method(4, 5, 6) => [4, 5, 3, 6] 
#   then if we add a fourth argument: my_method(4, 5, 6, 7)=> [4, 5, 6, 7]

#   This testing seems to present the functionality as replacing each unassigned variable first in order,
# then replacing default variables in the order presented given the user presents enough arguments.

#   Rubydoc syntax calling methods > arguments > default positional arguments supports the findings