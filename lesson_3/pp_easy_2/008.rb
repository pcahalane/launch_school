# QUESTION 8:
# Shorten the given sentence, removing everything starting from "house"
#-----------------------------------------------------------------------------#
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice!(0, advice.index('house'))
p advice

# if using String#slice in place of String#slice! then the string referenced by
# advice is not mutated.