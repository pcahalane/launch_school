# 1) HOW OLD IS TEDDY?
#-----------------------------------------------------------------------------#
# Build a program that randomly generates and prints Teddy's age (by
# generating a random number between 20 & 200)
# Further Exploration: Modify this program to ask for a name to print with the
# age, and use "Teddy" as the name if no name is entered.
#-----------------------------------------------------------------------------#

puts "Hello! What is your name?"
name = gets.chomp!

name = "Teddy" if name.empty?

p "#{name} is #{rand(20...200)} years old!"
