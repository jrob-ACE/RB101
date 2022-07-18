# Write pseudo-code (informal and formal) then Ruby code for the following:
# a method that takes an array of strings, and returns a string that is all those strings concatenated together

# Informal pseudo-code:
# create a new method that:
#   takes an array of strings as input
#   concatenates the array of strings into one string (the result)
# output the result
# end

# Formal pseudo-code:
# START
# DEF method with input: array of strings
#   result = use join method to concatenate strings
#   return result
# END METHOD
#
# one_string = CALL method with array of strings as argument
# PRINT one_string
# END

# Ruby code:

def string_join(array)
  array.join
end

one_string = string_join(['a','b','c','d','e','f','g'])
puts one_string
