# 3) TIP CALCULATOR
#-----------------------------------------------------------------------------#
# Create a simple tip calculator; the program should prompt for a bill amount
# and a tip rate.  The program must compute the tip and then display both the
# tip and the total amount of the bill.
#-----------------------------------------------------------------------------#
# EXAMPLE:
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0
#-----------------------------------------------------------------------------#

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_rate = gets.chomp.to_f

tip = (bill * (tip_rate / 100)).round(2)
total = bill + tip

puts "The tip is $#{tip}"
puts "The total is $#{total}"

#-----------------------------------------------------------------------------#
# FURTHER EXPLORATION:
# The solution prints the results as $30.0 and 230.0 instead of the more usual
# $30.00 or $230.00; modify the solution so it always prints with two decimal
# places (hint: you will likely need Kernel#format for this!)

# format(format_string [, arguments...]) -> string
# returns the string resulting from applying format_string to any additional
# arguments; within the format string any characters other than format
# sequences are copied to the result.
#-----------------------------------------------------------------------------#

puts "Or rather, the tip is $#{sprintf("%.2f", tip)}"
puts "And the total is $#{sprintf("%.2f", total)}"
