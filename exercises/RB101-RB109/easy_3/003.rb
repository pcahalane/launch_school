# 3) COUNTING THE NUMBER OF CHARACTERS
# Write a program that will ask a user for an input of a word or multiple
# words and give back the numbers characters.  Spaces should not counted as a 
# character.
# --------------------------------------------------------------------------- #

puts "Please write word or multiple words:"
input_string = gets.chomp

char_count = input_string.gsub(/\s/, '').length

puts "There are #{char_count} characters in #{input_string}."

# --------------------------------------------------------------------------- #
# => Please write word or multiple words:
# walk
# => There are 4 characters in "walk".

# => Please write word or multiple words:
# walk, don't run
# => There are 13 characters in "walk, don't run".
