# 5) STAGGERED CAPS (PART 1): ----------------------------------------------- #
# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme
# in which every other character is capitalized, and the remaining characters
# are lowercase.  Characters that are not letters should not be changed, but
# count as characters when switching between upper and lowercase.
# FURTHER EXPLORATION: ------------------------------------------------------ #
# Can you modify this method so the caller can request that the first
# character be downcased rather than upcased?  If the first character is
# downcased, then the second character should be upcased, and so on.
# --------------------------------------------------------------------------- #

def staggered_case(string, start = "upper")
  counter = 0
  staggered_string = ""
  counter += 1 if start == "lower"
  
  string.chars.each do |char|
    if counter.even?
      staggered_string << char.upcase
      counter += 1
    elsif counter.odd?
      staggered_string << char.downcase
      counter += 1
    end
  end
  staggered_string
end

# EXAMPLES: ----------------------------------------------------------------- #

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

staggered_case('I Love Launch School!', start = 'lower') #== 'i lOvE LaUnCh sChOoL!'
staggered_case('ALL_CAPS', start = 'lower') #== 'aLl_cApS'
staggered_case('ignore 77 the 444 numbers', start = 'lower') #== 'iGnOrE 77 tHe 444 nUmBeRs'
