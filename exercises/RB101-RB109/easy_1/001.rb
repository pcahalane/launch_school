# PROBLEM: REPEAT YOURSELF

# Write a method that takes two arguments, a string, and a postive integer,
# and prints the string as many times as the integer indicates.

# METHOD:
def repeat(string, num)
  num.times do
    puts string
  end
end

# Example:
repeat('Hello', 3)
# =>
# Hello
# Hello
# Hello