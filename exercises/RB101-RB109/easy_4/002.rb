# 2) WHAT CENTURY IS THAT?
# Write a method that takes a year as input and returns the century; the
# return value should be a string that begins with the century number, and
# ends with 'st', 'nd', 'rd', or 'th' as appropriate for that number.
# New centuries begin in years that end with 01, so the years 1901-2000
# comprise the 20th century.
# --------------------------------------------------------------------------- #

def append_ending(num)
  lastnum = num[-1].to_i

  if num[-2].to_i == 1
    num << "th"
  elsif lastnum == 1
    num << "st"
  elsif lastnum == 2
    num << "nd"
  elsif lastnum == 3
    num << "rd"
  else
    num << "th"
  end
  num
end

def century(year)
  century = (year / 100)
  century += 1 if year % 100 != 0
  century = century.to_s
  append_ending(century)
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
p century(2000) #== '20th'     # => true
p century(2001) #== '21st'     # => true
p century(1965) #== '20th'     # => true
p century(256) #== '3rd'       # => true
p century(5) #== '1st'         # => true
p century(10103) #== '102nd'   # => true
p century(1052) #== '11th'     # => true
p century(1127) #== '12th'     # => true
p century(11201) #== '113th'   # => true
