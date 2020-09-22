# QUESTION 1:
# Write a one-line program that creates the following output 10 times, with
# the subsequent line indented 1 space to the right:
#-----------------------------------------------------------------------------#
string = "The Flintstones Rock!"

10.times { |num| puts (" " * num) + string }