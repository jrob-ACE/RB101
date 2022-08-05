# What would you expect the code below to print out?
# A:
# 1
# 2
# 2
# 3
# Because array#uniq is not mutating.

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
