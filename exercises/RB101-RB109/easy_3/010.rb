# 10) PALINDROMIC NUMBERS
# Write a method that returns true if its integer argument is palindromic,
# false otherwise.
# --------------------------------------------------------------------------- #

def palindromic_number?(num)
  num == num.to_s.reverse.to_i
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
p palindromic_number?(34543) == true    # => true
p palindromic_number?(123210) == false  # => true
p palindromic_number?(22) == true       # => true
p palindromic_number?(5) == true        # => true
