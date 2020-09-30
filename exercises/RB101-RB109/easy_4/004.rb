# 4) LEAP YEARS (PART 2)
# The British Empire adopted the Gregorian Calendar in 1752, which was a leap
# year; prior to this the Julian Calendar was used wherein leap years occur in
# any year that is evenly divisible by 4.  Using this information, update the
# method from the previous exercise to determine leap years both before and
# after 1752.
# --------------------------------------------------------------------------- #

def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 != 0 && year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

# --------------------------------------------------------------------------- #
# EXAMPLES (should all output 'true'):
p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
