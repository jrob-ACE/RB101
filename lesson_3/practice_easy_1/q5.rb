# Question 5
# Programmatically determine if 42 lies between 10 and 100.
# hint: Use Ruby's range object in your solution.

range = 10..100
target = 42
range.include?(target) ? puts("#{target} IS between 10 and 100") : puts("#{target} IS NOT between 10 and 100")
