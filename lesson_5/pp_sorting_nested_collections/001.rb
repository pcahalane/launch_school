# 1) Order the given array of number strings by descending numerical value
# --------------------------------------------------------------------------- #

arr = ['10', '11', '9', '7', '8']

arr.sort do |a, b|
  b.to_i <=> a.to_i
end
