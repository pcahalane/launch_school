# 2) MADLIBS: --------------------------------------------------------------- #
# Mad libs are a simple game where you create a story template with blanks
# for words.  You, or another player, then construct a list of words and
# place them into the story, creating an often silly or funny story as a
# result.  Create a simple mad-lib program that prompts for a noun, a verb,
# and an adjective and injects those into a story that you create.
# --------------------------------------------------------------------------- #

def prompt(message)
  puts message
end

def madlib
  prompt "Enter a noun:"
  noun = gets.chomp
  
  prompt "Enter a verb:"
  verb = gets.chomp
  
  prompt "Enter an adjective:"
  adjective = gets.chomp
  
  prompt "Enter an adverb:"
  adverb = gets.chomp
  
  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

# EXAMPLES: ----------------------------------------------------------------- #
madlib
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!
