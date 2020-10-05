# 9) As we have seen previously we can use some built-in string methods to
# change the case of a string; a notably missing method is something provided
# in Rails, but not Ruby itself...titleize.  This method in Ruby on Rails
# creates a string that has each word capitalized as it would be in a title.
# Write your own version of the rails titleize implementation.
# --------------------------------------------------------------------------- #

def titleize(string)
  new_strings = []
  string.split.each do |word|
    new_strings << word.capitalize
  end
  new_strings.join(" ")
end

p titleize("This is a test")
p titleize("the flintstones rock")
