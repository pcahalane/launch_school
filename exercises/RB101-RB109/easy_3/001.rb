# 1) SEARCHING 101
# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5
# numbers
# --------------------------------------------------------------------------- #

def prompt_nums(array)
  num_counter = %w('1st' '2nd' '3rd' '4th' '5th' 'last')
  num_counter.each do |count|
    puts "Enter the #{count} number:"
    array << gets.chomp.to_i
  end
end

def last_included?
  nums_array = []
  prompt_nums(nums_array)
  final_num = nums_array.pop
  
  if nums_array.include?(final_num) 
    p "The number #{final_num} appears in #{nums_array}."
  else
    p "The number #{final_num} does not appear in #{nums_array}."
  end
end

last_included?

# --------------------------------------------------------------------------- #
# EXAMPLES:
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].
