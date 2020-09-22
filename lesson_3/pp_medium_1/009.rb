# QUESTION 9:
#-----------------------------------------------------------------------------#
# Given the two simple methods below, what is the expected return value of the
# method invocation?

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

# When foo is passed into bar as an argument it overrides the default param
# value "no" with "yes"; therefor when bar checks if param("yes") == "no" it
# will return false and therefor "no"