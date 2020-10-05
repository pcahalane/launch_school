# 9) What is the return value of map in the following code?  Why?
# --------------------------------------------------------------------------- #

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# --------------------------------------------------------------------------- #
# Enumerable#map returns a new array with the result of running block once for
# every element in enum; if no block is given, an enumerator is returned
# instead.

# => [nil, "bear"]