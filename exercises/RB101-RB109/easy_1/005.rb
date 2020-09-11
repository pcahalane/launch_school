# PROBLEM: REVERSE IT (PART 1)

#   Write a method that takes one argument, a string, and returns a new string
# with the words in the reverse order.

# METHOD:
def reverse_sentence(sentence)
  p sentence.split.reverse.concat.join(" ")
end

# EXAMPLES:
puts reverse_sentence('test') == 'test' # => true
puts reverse_sentence('Hello World') == 'World Hello' # => true
puts reverse_sentence('Reverse these words') == 'words these Reverse' # => true