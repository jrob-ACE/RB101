# What is the result of the last line in the code below?
# A: because #informal_greeting points to the same object as the value for #:a, the output is:
# {:a => 'hi there'}
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings
