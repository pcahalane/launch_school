# 7) WORD TO DIGIT:
# Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
# 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
# --------------------------------------------------------------------------- #

NUM_WORDS = {'zero' => 0, 'one' => 1, 'two'=> 2, 'three' => 3, 'four' => 4,
             'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9}

def format_phone(string)
  string.gsub!(/(\d)\s/, '\1')
  string.sub!(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')
end

def word_to_digit(string)
  NUM_WORDS.each_pair do |word, num|
    string.gsub!(/\b#{word}\b/, NUM_WORDS[word].to_s)
  end
  format_phone(string)
end

# EXAMPLES: ----------------------------------------------------------------- #
p word_to_digit('Please call me at five five five one two three one two three four. Thanks.') == 'Please call me at (555) 123-1234. Thanks.'

# FURTHER EXPLORATION: ------------------------------------------------------ #
# Change your solution to format the numbers written as a phone number
# => (555) 123-1234
