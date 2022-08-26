# The result of the following statement will be an error:
# puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?
# A: There is no implicit conversion from integer to string.  To solve this, either use string interpolation and encapsulate 40 + 2 or convert the expression (40 + 2) to a string.

puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s
