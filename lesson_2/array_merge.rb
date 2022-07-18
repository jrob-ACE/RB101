# Write pseudo-code (informal and formal) then Ruby code for the following:
# a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes. You may assume that both array arguments have the same number of elements.

# Informal pseudo-code:
# create a method that:
#   takes two arrays of numbers as input
#   creates a new array with the elements from the first array as the even-index elements and the elements of the second array as the odd-index elements
#   returns the new array

# Formal pseudo-code:
# START
# METHOD shuffle(array_1, array_2)
#   array_1.zip(array_2).flatten
#
# new_array = CALL shuffle(array_1,array_2)
# PRINT new_array
# END

def shuffle(array_1, array_2)
  array_1.zip(array_2).flatten
end

new_array = shuffle([1,3,5,7,9],[2,4,6,8,10])
p new_array #This works quite well

# Another go (not using the .zip method).
# Formal pseudo-code:
# START
# METHOD shuffle(array_1, array_2)
#   SET iteration = 0
#   SET new_array = []
#   # This code assumes that array_1 and array_2 are of the same length
#   WHILE iteration < length of array_1
#     push array_1 element in index of iteration into new_array
#     push array_2 element in index of iteration into new_array
#     increment iteration by 1
#   RETURN new_array
# END of method
#
# new_array = CALL shuffle(array_1, array_2)
# PRINT new_array
# END

def shuffle(array_1, array_2)
  iteration = 0
  new_array = []

  # This code assumes that array_1 and array_2 are of the same length
  while iteration < array_1.length
    new_array << array_1[iteration]
    new_array << array_2[iteration]
    iteration += 1
  end

  return new_array
end

new_array = shuffle([1,3,5,7,9],[2,4,6,8,10])
p new_array
