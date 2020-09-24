# 5) GREETING A USER
#-----------------------------------------------------------------------------#
# Write a program that will ask for a user's name, then greet the user.  If
# the user writes "name!" then the computer yells back to the user.
#-----------------------------------------------------------------------------#
# EXAMPLES:
# What is your name? Bob
# Hello Bob
# What is your name? Bob!
# HELLO BOB.  WHY ARE WE SCREAMING?
#-----------------------------------------------------------------------------#

puts "What is your name?"
name = gets.chomp!

if name.end_with?("!")
  name.chop!
  puts "HELLO #{name.upcase}.  WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end
