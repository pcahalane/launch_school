# PROBLEM: HOW MANY?

#   Write a method that counts the number of occurrences of each element in a given array.
# The words in the array are case-sensitive: 'suv' != 'SUV' .  Once counted,
# print each element alongside the number of occurrences.

#METHOD:
def count_occurrences(array)
  
  count_hash = {}
  
  array.map(&:downcase!)
  
  array.uniq.each do |ele|
    count_hash[ele] = 0
  end
  
  array.each do |ele|
    count_hash[ele] += 1
  end
  
  puts count_hash
end

#TESTING:
vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv', 'SUV']

count_occurrences(vehicles)
# => 
# car => 4
# truck => 3
# SUV => 3
# motorcycle => 2