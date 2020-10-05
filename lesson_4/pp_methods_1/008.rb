# 8) How does take work?  Is it destructive?  How can we find out?
# --------------------------------------------------------------------------- #

p arr = [1, 2, 3, 4, 5]
p arr.take(2)           # => [1, 2]
p arr                   # => [1, 2, 3, 4, 5]

# --------------------------------------------------------------------------- #
# Documentation for Enumerable#take(n) -> array states it will return the
# first 'n' elements from enum (does not mutate/is not destructive)
