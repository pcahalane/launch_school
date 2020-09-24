# 2) HOW BIG IS THE ROOM?
#-----------------------------------------------------------------------------#
# Build a program taht asks a user for the length and width of a room in
# meters and then displays the area of the room in both square meters and
# square feet.  (Don't worry about validating the input at this time)
# Note: 1 square meter == 10.7639 square feet
#-----------------------------------------------------------------------------#
# Example Run:
# => Enter the length of the room in meters:
# 10
# => Enter the width of the room in meters:
# 7
# => The area of the room is 70.0 square meters (753.47 square feet).
#-----------------------------------------------------------------------------#

puts "How many meters long is the room?"
length = gets.chomp.to_f

puts "How many meters wide is the room?"
width = gets.chomp.to_f

area_meters = length * width
area_feet = (area_meters * 10.7639).round(2)

puts "The area of the room is #{area_meters} square meters " + \
     "(#{area_feet} square feet)."

#-----------------------------------------------------------------------------#
# Further Exploration: Modify this program to ask for the input measurements
# in feet, and display the results in square feet, square inches, and square
# centimeters.
#-----------------------------------------------------------------------------#

puts "How many feet long is the room?"
length = gets.chomp.to_f

puts "How many feet wide is the room?"
width = gets.chomp.to_f

area_feet = length * width
area_inches = area_feet * 144
area_centimeters = area_feet * 929

puts "The area of the room is #{area_feet.round(2)} square feet, " + \
     "#{area_inches.round(2)} square inches, or " + \
     "#{area_centimeters.round(2)} square centimeters."
