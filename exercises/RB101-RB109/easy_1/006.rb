# PROBLEM: REVERSE IT (PART 2)

#   Write a method that takes one argument, a string containing one or more words,
# and returns the given string with words that contain five or more characters reversed.
# Each string will consist of only letters and spaces.  Spaces should only be included
# when more than one word is present.

# METHOD:
def reverse_words(string)
  strings_array = string.split
    strings_array.each do |word|
      unless word.length < 5
        word.reverse!
      end
    end
  strings_array.join(" ")
end

# EXAMPLES:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS