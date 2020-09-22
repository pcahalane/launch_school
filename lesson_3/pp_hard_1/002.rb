# QUESTION 2:
#-----------------------------------------------------------------------------#
# What is the result of the last line in the code below?
#-----------------------------------------------------------------------------#

greetings = { a: 'hi' }             # assign (:a, 'hi') to greetings hash
informal_greeting = greetings[:a]   # informal_greeting = object assigned to key :a in greetings
informal_greeting << ' there'       # append ' there' => 'hi there' to object

puts informal_greeting  #  => "hi there"
puts greetings          # => {:a=>"hi there"}

#-----------------------------------------------------------------------------#
# Because << 'there' in line 8 is appending that string to the object itself
# we expect to see the change reflected in the original object referenced within
# the greetings array