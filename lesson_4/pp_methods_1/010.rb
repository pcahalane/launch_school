# 10) What is the return value of the following code and why?
# --------------------------------------------------------------------------- #

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# --------------------------------------------------------------------------- #
# Applying what we know from the previous problem, we see that 1 > 1 == false
# and will return num (1) which will be the first element of the new array to
# be returned; 2 and 3 meet the if condition for num > 1, and instead will
# puts num which will add a nil value to the array.

# => [1, nil, nil]