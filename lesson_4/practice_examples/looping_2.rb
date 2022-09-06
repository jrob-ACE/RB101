colors = %w(green blue purple orange)
counter = 0

loop do
  break if counter >= colors.size
  puts "I'm the color #{colors[counter]}!"
  counter += 1
end

# What do you think will be output by the loop?
# A: Output:
  # I'm the color green!
  # I'm the color blue!
  # I'm the color purple!
  # I'm the color orange!
