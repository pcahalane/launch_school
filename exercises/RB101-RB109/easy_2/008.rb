# 8) SUM OR PRODUCT OF CONSECUTIVE INTEGERS
#-----------------------------------------------------------------------------#
# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.
#-----------------------------------------------------------------------------#
# EXAMPLES:
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.
#-----------------------------------------------------------------------------#

def compute_sum(uppernum)
  total = 0
  1.upto(uppernum).each do |num|
  total += num
  end
  p "The sum of the integers between 1 and #{uppernum} is #{total}."
end

def compute_product(uppernum)
  total = 1
  (1..uppernum).to_a.each do |num|
  total *= num
  end
  p "The product of the integers between 1 and #{uppernum} is #{total}."
end

puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts "Enter 's' to computer the sum or 'p' to compute the product of all " + \
     "numbers 1 through #{integer}."
input = gets.chomp

if input == "s"
  compute_sum(integer)
elsif input == "p"
  compute_product(integer)
end

#-----------------------------------------------------------------------------#
# FURTHER EXPLORATION: Another way to compute sumsa nd products is with the
# Enumerable#inject method; take time to read the documentation and try to use
# #inject in your solution to this problem.

# inject(initial, sym) -> obj
# inject(sym) -> obj
# inject(initial) { |memo, obj| block } -> obj
# inject { |memo, obj| block } -> obj

# Combines all elements of enum by applying a binary operation, specified
# block or a symbol that names a method or operator.  If a block is specified
# then for each element in enum the block is passed an accumulator value (memo)
# and the element.  If you specify a symbol instead, then each element in the
# collection will be passed to the named method of memo.  In either case, the
# result becomes the new value for memo.  At the end of the iteration the final
# value of memo is the return value of the method.  If initial value is not
# explicitly specified for memo then the first element of the collection is
# used as the initial value.
#-----------------------------------------------------------------------------#

def compute_sum(uppernum)
  total = (1..uppernum).inject { |sum, n| sum + n }
  p "The sum of the integers between 1 and #{uppernum} is #{total}."
end

def compute_product(uppernum)
  total = (1..uppernum).inject { |sum, n| sum * n }
  p "The product of the integers between 1 and #{uppernum} is #{total}."
end

puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts "Enter 's' to computer the sum or 'p' to compute the product of all " + \
     "numbers 1 through #{integer}."
input = gets.chomp

if input == "s"
  compute_sum(integer)
elsif input == "p"
  compute_product(integer)
end
