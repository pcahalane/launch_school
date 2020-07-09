# PROBLEM: OPTIONAL ARGUMENTS REDUX
# Assume you have the following code; What will each of the 4 puts statements print?
require 'date'

puts Date.new                   # => '-4712-01-01'
puts Date.new(2016)             # => '2016-01-01'
puts Date.new(2016, 5)          # => '2016-05-01'
puts Date.new(2016, 5, 13)      # => '2016-05-13'

# SOLUTION:
# Navigate to the document for the class Date, then the class method Date::new ; we see:
#   new(p1=v1, p2=v2, p3=v3, p4=v4)
#   this seems to indicate the Date::new class method will accept up to four arguements
# Testing Date.new in IRB returns default Date values, '-4712-01-01', which is what we expect to print from line 5
# Supplying a single arguement on line 6 will overwrite the year value and print '2016-01-01'
# Supplying two arguements on line 7 will overwrite the year and month value and print '2016-05-01'
# Supplying three arguements on line 8 will overwrite the year, month, and day and print '2016-05-13'