# 12) Given the array below and WITHOUT using the Array#to_h method, write
# some code that will return a hash where the key is the first item in each
# sub array and the value is the second item.
# --------------------------------------------------------------------------- #

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hash = {}

arr.each do |subarray|
  hash[subarray[0]] = subarray[1]
end

# => {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
