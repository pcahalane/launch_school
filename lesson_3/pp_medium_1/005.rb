# QUESTION 5:
#-----------------------------------------------------------------------------#
# Fibonacci Calculator: user passes in two numbers and the calculator will 
# keep computing the sequence until some limit is eached.
#-----------------------------------------------------------------------------#
# This code encounters an error; what's wrong with it?

limit = 15

def fib(first_num, second_num)
 while first_num + second_num < limit
   sum = first_num + second_num
   first_num = second_num
   second_num = sum
 end
 sum
end

result = fib(0, 1)
puts "result is #{result}"

# An error occurs in line 11 when attempting to reference 'limit' which is
# outside of the method scope.  To fix this, limit can be initialized within
# the definition of the fib method:

def fib(first_num, second_num)
 limit = 15
 while first_num + second_num < limit
   sum = first_num + second_num
   first_num = second_num
   second_num = sum
 end
 sum
end

# Or limit can be passed into the fib method as an argument:

limit = 15

def fib(first_num, second_num, end_num)
  while first_num + second_num < end_num
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end
