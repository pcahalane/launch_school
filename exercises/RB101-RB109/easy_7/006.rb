# 6) STAGGERED CAPS (PART 2): ----------------------------------------------- #
# Modify the method from thep revious exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter.  The non-alphabetic characters should still be included in the
# return value; they just don't count when toggling the desired case.
# --------------------------------------------------------------------------- #
ALPHABET = [('a'..'z').to_a, ('A'..'Z').to_a].flatten

def staggered_case(string, start = "upper")
  counter = 0
  staggered_string = ""
  counter += 1 if start == "lower"
  
  string.chars.each do |char|
    if ALPHABET.include?(char)
      counter.even? ? (staggered_string << char.upcase): (staggered_string << char.downcase)
      counter += 1
    else
      staggered_string << char
    end
  end
  staggered_string
end

# --------------------------------------------------------------------------- #
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
