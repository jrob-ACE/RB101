# numbers = [1, 2, 3, 4, 5]
# What do the following method calls do (assume we reset numbers to the original array between method calls)?
  # numbers.delete_at(1)
  # numbers.delete(1)
# A: number.delete_at(1) returns 2 and removes 2 from numbers.  numbers => [1, 3, 4, 5]
# A: number.delete(1) returns 1 and removes 1 from numbers.  numbers => [2, 3, 4, 5]

numbers = [1, 2, 3, 4, 5]
p numbers.delete_at(1)
p numbers

numbers = [1, 2, 3, 4, 5]
p numbers.delete(1)
p numbers
