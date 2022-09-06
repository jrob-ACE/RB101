number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}

pets = number_of_pets.keys # => ['dogs', 'cats', 'fish']
counter = 0

loop do
  break if counter >= number_of_pets.size
  current_pet = pets[counter]
  current_pet_number = number_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}!"
  counter += 1
end

puts "Again..."
#Another way of doing this with an iterator instead of the loop method.  This requires 1 line instead of 9 lines.  The Hash#each (alias for Hash#each_pair) is a very efficient iterator method.
number_of_pets.each { |key, value| puts "I have #{value} #{key}!" }
