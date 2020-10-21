# 3) AFTER MIDNIGHT (PART 2):
# As seen in the previous exercise, the time of day can be represented as the
# number of minutes before or after midnight.  Write two methods that each
# take a time of day in 24-hour format and return the number of minutes
# before and after midnight, respectively.  Both methods should return a
# value in the range 0..1439.  Do not use Date or Time methods.
# --------------------------------------------------------------------------- #

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY


def before_midnight(string)
  delta_minutes = MINUTES_PER_DAY - after_midnight(string)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

def after_midnight(string)
  current_hour, current_minute = string.split(':').map(&:to_i)
  (current_hour * MINUTES_PER_HOUR + current_minute) % MINUTES_PER_DAY
end

# --------------------------------------------------------------------------- #
# TEST CASES:
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686

p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
