# 1) WELCOME STRANGER: ------------------------------------------------------ #
# Create a method that takes 2 arguments (an Array & a Hash).  The Array will
# contain 2 or more elements that, when combined with adjoining spaces, will
# produce a person's name.  The hash will contain two keys, :title and
# :occupation, and the appropriate values.  Your method should return a
# greeting that uses the person's full name, and mentions the person's title
# and occupation.
# --------------------------------------------------------------------------- #

def greetings(name, details)
  puts "Hello, #{name.join(' ')}!  "\
       "Nice to have a #{details[:title]} #{details[:occupation]} around."
end

# EXAMPLES: ----------------------------------------------------------------- #
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
