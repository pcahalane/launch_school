# 9) GRADE BOOK: ------------------------------------------------------------ #
# Write a method that determines the mean (average) of the three scores
# passed to it, and returns the letter value associated with that grade.
# Tested values are all between 0 and 100, there is no need to check for
# negative values or values greater than 100.
# --------------------------------------------------------------------------- #

def get_grade(first, second, third)
  mean_score = (first + second + third) / 3
  
  case mean_score
  when (101...)  then 'A+'
  when (90..100) then 'A'
  when (80..89)  then 'B'
  when (70..79)  then 'C'
  when (60..69)  then 'D'
  else                'F'
  end
  
end

# EXAMPLES: ----------------------------------------------------------------- #
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
get_grade(150, 100, 90) == "A+"
