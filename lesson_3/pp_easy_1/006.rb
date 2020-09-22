# QUESTION 6:
# Starting with the given string, show two different ways to put the expected
# "Four score and " in front of it.
#-----------------------------------------------------------------------------#
famous_words = "seven years ago..."

p "Four score and " + famous_words
p famous_words.prepend("Four score and ")
# or:
# "Four score and " << famous_words