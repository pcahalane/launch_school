# QUESTION 7:
# How can we add multiple items "Dino" and "Hoppy" to the array?
#-----------------------------------------------------------------------------#
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.insert(6, "Dino", "Hoppy")

# or: flintstones.push("Dino").push("Hoppy")
# or: flintstones.concat(%w(Dino Hoppy))
