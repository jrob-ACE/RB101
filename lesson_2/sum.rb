#  Create a method that returns the sum of two integers.

# Pseudo-code (informal):
# create method
#   - method takes two integers as input
#   - method returns an integer as output
#     - method returns the sum of the inputs
#

# Pseudo-code (formal):
# START
# DEFINE METHOD with inputs: number_1, number_2
#   return (number_1 + number_2)
#
# result = CALL METHOD with arguments
# PRINT result
# END

# Ruby code:
def sum(num_1, num_2)
  num_1 + num_2
end

result = sum(3, 4)
puts result


