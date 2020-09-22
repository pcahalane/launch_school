# QUESTION 3:
#-----------------------------------------------------------------------------#
# In other practice problems, we looked at how the scope of variables affects
# the modification of one "layer" when they are passed to another.  To drive
# home the salient aspects of variable scope and modification of one scope by
# another, consider the following similar sets of code.  What will be printed
# by each of these code groups?
#-----------------------------------------------------------------------------#

# A)

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"     # => "one"
puts "two is: #{two}"     # => "two"
puts "three is: #{three}" # => "three"

# This is expected because assignment does not reassign the original object.

#-----------------------------------------------------------------------------#

# B)

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"     # => "one"
puts "two is: #{two}"     # => "two"
puts "three is: #{three}" # => "three"

# This is expected because assignment does not reassign the original object.

#-----------------------------------------------------------------------------#

# C

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"     # => "two"
puts "two is: #{two}"     # => "three"
puts "three is: #{three}" # => "one"

# Because gsub! performs a replacement on the original object passed into it,
# we would expect to see the mutations within the method carry to what prints
# to the output.

#-----------------------------------------------------------------------------#
