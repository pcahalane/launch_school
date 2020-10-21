# 9) ddaaiillyy ddoouubbllee:
# --------------------------------------------------------------------------- #
# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character.  You may not use
# String#squeeze or String#squeeze!.
# --------------------------------------------------------------------------- #
# INITIAL SOLUTION:

def crunch(string)
  prev_char = ''
  new_string = ''
  
  string.chars.each do |char|
    if char == prev_char
      next
    else
      new_string << char
      prev_char = char
    end
  end
  
  new_string
end

# --------------------------------------------------------------------------- #
# EXPLORING REGEX:

def crunch(string)
  string.gsub(/(.)\1{1,}/, '\1')
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
