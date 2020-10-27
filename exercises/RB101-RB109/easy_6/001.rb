# 1) CUTE ANGLES:
# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle
# in degrees, minutes, and seconds. &our results may differ slightly
# depending on how you round values, but should be within a second or two of
# the results shown.  Use two digit numbers with leading zeros when
# formatting the minutes, and seconds, eg., 321°03'07".

# (°) degree symbol: represents degrees
# (') single quote: represents minutes
# (") double quote: represents seconds
# (A degree has 60 minutes, while a minute has 60 seconds)

# FURTHER EXPLORATION:
# Since degrees are normally restricted to the range 0-360, can you modify
# the code so it returns a value in the appropriate range when the input is
# less than 0 or greater than 360?
# --------------------------------------------------------------------------- #

DEGREE = "\xC2\xB0"             # DEGREE SYMBOL
DEGREES_RANGE = (0..360)        # REFERENCE OF DEGREES RANGE RESTRICTION

def dms(num)
  until DEGREES_RANGE.include?(num.to_i)
    num < 0 ? (num += 360) : (num -= 360)
  end
  
  num = num.to_f.to_s
  
  degrees = num.match(/^\d+/).to_s.to_i
  minutes = ((num.match(/\.\d+$/).to_s.to_f) * 60)
  seconds = ((minutes.to_s.match(/\.\d+$/).to_s.to_f) * 60)
  
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

# --------------------------------------------------------------------------- #
# EXAMPLES:
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || %(0°00'00")

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")
