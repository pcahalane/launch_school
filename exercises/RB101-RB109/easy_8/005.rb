# 5) PALINDROMIC SUBSTRINGS: ------------------------------------------------ #
# Write a method that returns a list of all substrings of a string that are
# palindromic.  That is, each substring must consist of the same sequence
# of characters forwards as it does backwards.  The return value should be
# arranged in the same sequance as the substrings appear in the string.
# Duplicate palindromes should be included multiple times.  You may (and
# should) use the substrings method you wrote in the previous exercise.  For
# the purposes of this exercise, you should consider all charactesr and pay
# attention to case.
# --------------------------------------------------------------------------- #

def leading_substrings(string)
  counter = 0
  array = []
  
  until counter == string.length
    array << string[0, counter += 1]
  end
  array
end

# --------------------------------------------------------------------------- #

def substrings(string)
  start_idx = 0
  substrings_array = []
  
  until start_idx == string.length
    substrings_array << leading_substrings(string[start_idx..-1])
    start_idx += 1
  end
  
  substrings_array.flatten!
end

# --------------------------------------------------------------------------- #

def palindromes(string)
  substrings = substrings(string)
  substrings.select { |chars| chars == chars.reverse && chars.length > 1 }
end

# EXAMPLES: ----------------------------------------------------------------- #
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
