# 10) Given the array below and without modifying the original array, use the
# map method to return a new array identical in structure to the original
# but where the value of each integer is incremented by 1.
# --------------------------------------------------------------------------- #

original_array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
new_hash = {}

original_array.map do |hash| # creates new array using return values each iteration
  hash.each do |key, num|
    new_hash[key] = num + 1
  end
  new_hash
end

p original_array
p new_hash
