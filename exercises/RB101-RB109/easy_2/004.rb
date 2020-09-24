# 4) WHEN WILL I RETIRE?
#-----------------------------------------------------------------------------#
# Build a program that displays when the user will retire and how many years
# she has to work till retirement.
#-----------------------------------------------------------------------------#
# EXAMPLE:
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
#-----------------------------------------------------------------------------#

current_year = Time.now.year

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
goal_age = gets.chomp.to_i

years_left = goal_age - age
goal_year = current_year + years_left

puts "It's #{current_year}.  You will retire in #{goal_year}."
puts "You only have #{years_left} years of work to go! Get after it!"
