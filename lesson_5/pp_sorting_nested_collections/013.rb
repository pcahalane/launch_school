# 13) Given the array below, return a new array containing the same sub-
# arrays as the original but ordered logically by only taking into
# consideration the ODD numbers contained.
# --------------------------------------------------------------------------- #

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |subarray|
  subarray.select do |num|
    num.odd?
  end
end
