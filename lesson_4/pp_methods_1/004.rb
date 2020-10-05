# 4) What is the return value of each_with_object in the following code?  Why?
# --------------------------------------------------------------------------- #

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# --------------------------------------------------------------------------- #
# Enumerable#each_with_object(obj) {*args), memo_obj| ... }
# iterates the given block for each element with an arbitrary object given,
# and returns the initially given object.

