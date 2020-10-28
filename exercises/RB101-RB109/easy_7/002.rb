# 2) LETTERCASE COUNTER:
# Write a method that takes a string, and then returns a hash that contains
# 3 entries:one represents the number of characters in the string that are
# lowercase letters, one the number of chracters that are uppercase letters,
# and one the number of characters that are neither.
# --------------------------------------------------------------------------- #

LOWERCASE = ('a'..'z')
UPPERCASE = ('A'..'Z')

def letter_case_count(string)
  count_hash = { lowercase: 0,
                 uppercase: 0,
                 neither: 0   }
  string.chars do |char|
    if LOWERCASE.to_a.include?(char)
      count_hash[:lowercase] += 1
    elsif UPPERCASE.to_a.include?(char)
      count_hash[:uppercase] += 1
    else
      count_hash[:neither] += 1
    end
  end
  count_hash
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
