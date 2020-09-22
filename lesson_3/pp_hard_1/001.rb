# QUESTION 1:
#-----------------------------------------------------------------------------#
# What do you expect to happen when the greeting variable is referenced in the
# last line of the code below?
#-----------------------------------------------------------------------------#

if false
  greeting = "hello world"
end

greeting

#-----------------------------------------------------------------------------#
# Nothing will happen with the greeting variable is referenced; the 'if false'
# conditional is not met (as without assignment defaults to true) and therefor
# greeting is never assigned a value.