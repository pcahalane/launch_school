# 10) MUTATION
#-----------------------------------------------------------------------------#
# What will the following code print, and why?
#-----------------------------------------------------------------------------#

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

#-----------------------------------------------------------------------------#
# While upcase! was called while iterating over the elements of array1, we
# assigned the elements of array1 directly to array2 in line 8 (not copies)
# and therefor should expect to see the corresponding names beginning with 'C'
# and 'S' mutated/upcased regardless of which array we call on.
