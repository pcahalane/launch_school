# 11) SPIN ME AROUND IN CIRCLES:
# You're given a method named spin_me which takes a string as an argument
# and returns a string that contains the same words, but with each word's
# characters reversed.  Given the method's implementation, will the returned
# string be the same object as the one passed in as an argument or a
# different object?
# --------------------------------------------------------------------------- #

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# The method first calls #split on the original string which creates an array;
# #each is then called on the array, iterating over each element (word) which
# is mutated with #reverse; finally #join is used to return a new string.

# At no point is the original string modified, as #split creates a new object
# to work with at the beginning; the object returned is not the original.
