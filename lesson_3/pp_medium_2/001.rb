# QUESTION 1:
#-----------------------------------------------------------------------------#
# Every named entity in Ruby has an object_id, a unique identifier for that
# object.  It is often the case that two different things "look the same", but
# may be different objects. The "under the hood" object referred to by a
# particular named-variable can change depending on what is done to that
# named-variable.  In other words, in Ruby, all values are objects...but they
# are not always the same object.  Predict how the values and object ids will
# change throughout the flow of the code below:
#-----------------------------------------------------------------------------#

def fun_with_ids
  a_outer = 42              # a Numeric
  b_outer = "forty two"     # a String
  c_outer = [42]            # an Array containing a Numeric
  d_outer = c_outer[0]      # references the same object as index 0 of c_outer
#                           ex: c_outer[0].object_id == d_outer.object_id

  a_outer_id = a_outer.object_id  #          42 id => 85
  b_outer_id = b_outer.object_id  # "forty two" id => 18688860
  c_outer_id = c_outer.object_id  #        [42] id => 186688840
  d_outer_id = d_outer.object_id  #          42 id => 85

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."
  puts

  1.times do
    a_outer_inner_id = a_outer.object_id
    b_outer_inner_id = b_outer.object_id
    c_outer_inner_id = c_outer.object_id
    d_outer_inner_id = d_outer.object_id
    # all the ids remain the same within the block

    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block."
    puts

    a_outer = 22              #             22 id => 45
    b_outer = "thirty three"  # "thirty three" id => 13405380
    c_outer = [44]            #           [44] id => 13405360
    d_outer = c_outer[0]      #             44 id => 89
    # all [alpha]_outer variables reassigned to reference the object ids above

    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."
    puts

    a_inner = a_outer
    b_inner = b_outer
    c_inner = c_outer
    d_inner = c_inner[0]
    # new [alpha]_inner variables are initiated referencing their respective
    # outer counterpart values (they are referencing the same object/id)

    a_inner_id = a_inner.object_id
    b_inner_id = b_inner.object_id
    c_inner_id = c_inner.object_id
    d_inner_id = d_inner.object_id

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
    puts
  end

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block."
  # this accurately reflects the reassignment of each [alpha]_outer variable in
  # lines 43-46
  puts

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  # an exception occurs as the [alpha]_inner variables were initied in the
  # scope of the 1.times { block } and cannot be referenced outside of it.
end

fun_with_ids