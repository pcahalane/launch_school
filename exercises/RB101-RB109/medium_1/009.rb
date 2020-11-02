# 9) FIBONACCI NUMBERS (PROCEDURAL):
# Rewrite your recursive fibonacci method so that it computes its results
# without recursion.
# --------------------------------------------------------------------------- #

def fibonacci(total_iterations)
  first, last = [1, 1]

  3.upto(total_iterations) do
    first, last = [last, first + last]
  end
  
  last
end

# EXAMPLES: ----------------------------------------------------------------- #
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
