require "pry"

########################################################################
# A method that returns the sum of two integers:
#
# CASUAL:
#   create a method which:
#     - takes 2 integers as arguments
#     - adds the 2 integers passed to the method
#   
# FORMAL:
#   START
#     SET method add(arguement1, arguement2)
#       add arguement1 with arguement 2
#     END method add
#   to verify: 
#     PRINT result of calling method add(integer1, integer2)
#   END
########################################################################

def add(arg1, arg2)
  arg1 + arg2
end

p "Testing 2 + 2:"
p add(2, 2)
p "----------------------------------------------------------------------------------------"

########################################################################
# A method that takes an array of strings, and returns
# a string that is all those strings concatenated together:
# 
# CASUAL:
#   given an array of strings
#   create a method which:
#     - accepts an array of strings
#     - iterates over the elements of the array given
#     - returns a single string containing all elements iterated over
#   
# FORMAL:
# given array of strings (array)
#   START
#   SET method concatenate(array)
#     SET string = ""
#     iterate over each element of array, add element to string
#     (consider prepending by whitespace to create a legible sentence)
#   return string
#   (consider: removing leading whitespace if added, capitalizing 1st character if 
#   creating a sentence)
#   END
########################################################################

arr = ["this", "is", "my", "array", "of", "strings,", "or", "is", "it", "one", "string", "now?"]

def concatenate(array)
  string = ""
  array.each {|str|
  string.concat(" " + str)
  }
  string.lstrip!.capitalize!
end

p "The original array of strings contained: "
p arr
p "The array concatenating all strings into one contains: "
p concatenate(arr)
p "----------------------------------------------------------------------------------------"

########################################################################
# A method that takes an array of integers, and
# returns a new array with every other element:
# 
# CASUAL:
#   given an array of integers
#   create a method which:
#     - iterates over the given array
#     - returns a new array containing every other element of the given array
# 
# FORMAL:
# given array of numbers (arrofnums)
# 
#   START
#   SET method eenymeeny(array)
#     SET newarr = []
#     SET counter = 0
#     iterate over each element of arrofnums
#       IF counter == odd
#         add element to newarr
#     increment counter: + 1
#     return newarr
#   END
########################################################################

arrofnums = [1975, 20, 2010, 30, 2020, 0, 1990, 50]

def eenymeeny(array)
  newarr = []
  counter = 0
  array.each{|num|
  newarr << num if counter.odd?
  counter += 1
  }
  newarr
end

p "The original array was: #{arrofnums}"
p "The new array containing every other element contains: #{eenymeeny(arrofnums)}"