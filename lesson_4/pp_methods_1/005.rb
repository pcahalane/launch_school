# 5) What does shift do in the following code?  How can we find out?
# --------------------------------------------------------------------------- #

hash = { a: 'ant', b: 'bear' }
hash.shift                      # => [:a, 'ant']

# --------------------------------------------------------------------------- #
# By looking at the Hash#shift documentation we see that shift removes a
# key-value pair from hsh and returns it as the two-item array [key, value] or
# the hash's default value if the hash is empty.
