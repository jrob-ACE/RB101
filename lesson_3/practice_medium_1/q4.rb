# Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

# She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?
# Yes, there is a signficant difference. rolling_buffer1 mutates the argument object passed to buffer and also returns a pointer to the same argument object. rolling_buffer2 returns a new object and does not mutate any objects outside of its scope.

# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end
#
# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

array1 = [1, 2, 3, 4]

array2 = rolling_buffer1(array1, 4, 5)

p array1.object_id == array2.object_id  #=> true
p array2
