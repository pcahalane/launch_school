# 7) Given the code below, what would be the final values of a and b?
# --------------------------------------------------------------------------- #

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2 
arr[1][0] -= a  # 

# --------------------------------------------------------------------------- #
# Lines 8 and 9 are referencing specific elements within arr; neither will
# reference variable a which will remain unchanged, but arr[1][0] is
# referencing the b variable which will reflect the changes made to arr[1][0].
