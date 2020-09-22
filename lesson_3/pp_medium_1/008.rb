# QUESTION 8:
#-----------------------------------------------------------------------------#
# Given the following method, rps, which follows classic rock-paper-scissor
# rules with a twist that it declares whatever hand was used in the tie as the
# result of that tie...:

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

# What is the result of the call:

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")


# => Working through the code from the inner parenthesis:

puts rps(rps("paper", "rock"), "rock")

puts rps("paper", "rock")

# => We expect it to return "paper"