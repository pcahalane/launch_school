# 6) RUNNING TOTALS:
# Write a method that takes an Array of numbers and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.
# --------------------------------------------------------------------------- #

def running_total(array)
  running_num = 0
  new_array = []
  array.each do |num|
    new_array << num + running_num
    running_num += num
  end
  new_array
end

# --------------------------------------------------------------------------- #
# Using #map makes this even easier:
# --------------------------------------------------------------------------- #

def running_total(array)
  running_num = 0
  array.map { |num| running_num += num }
end

# --------------------------------------------------------------------------- #
# EXAMPLES (should all output 'true'):
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []