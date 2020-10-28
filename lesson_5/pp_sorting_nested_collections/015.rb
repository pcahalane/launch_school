# 15) Given the array below, write some code to return an array which
# contains only the hashes where all the integers are even.
# --------------------------------------------------------------------------- #

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hash|
  hash.all? do |__, nums_arr|
    nums_arr.all? do |num|
      num.even?
    end
  end
end