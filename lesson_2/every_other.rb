# Write pseudo-code (informal and formal) then Ruby code for the following:
# a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element.

# Informal pseudo-code:
# define a method that:
#   takes as input an array of integers
#   saves every other element in a new array (including the first element)
#   returns the new array
#
# print out the new array

# Formal pseudo-code:
# START
# DEF method with input: array (of integers)
#   new_array = array.select with condition that the element's index is even or zero (use modulo)
#   return new_array
# END method
#
# new_array = CALL method with argument: array (of integers)
# PRINT new_array

def every_other(array)
  # returns nil where the index is odd
  mixed = array.map.with_index do |element, index|
    (index % 2 != 0) ? nil : element
  end
  mixed.compact # array#compact returns a copy of the array with any nil elements removed
end

new_array = every_other([1,2,3,4,5,6,7,8,9,10,11])
puts new_array
