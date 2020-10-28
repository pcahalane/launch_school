# 10) GROCERY LIST: --------------------------------------------------------- #
# Write a method which takes a grocery list (array) of fruits with
# quantities and converts it into an array of the correct number of each
# fruit.
# --------------------------------------------------------------------------- #

def buy_fruit(array)
  new_array = []
  
  array.each do |pair|
    pair[1].times {new_array << pair[0]}
  end
  
  new_array
end

# EXAMPLES: ----------------------------------------------------------------- #
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
