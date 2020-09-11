# PROBLEM: WHAT'S MY BONUS?

#   Write a method that takes two arguments, a positive integer and a boolean, and
# calculates the bonus for a given salary.  If the boolean is true, the bonus should
# be half of the salary.  If the boolean is false, the bonus should be 0.

# INITIAL METHOD:
# def calculate_bonus(salary, goals_met)
#   if goals_met
#     salary /= 2
#   else
#     salary = 0
#   end
# end

# REFACTORED METHOD:
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

#EXAMPLES:
puts calculate_bonus(2800, true) == 1400    # true
puts calculate_bonus(1000, false) == 0      # true
puts calculate_bonus(50000, true) == 25000  # true