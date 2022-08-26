# Shorten the following sentence:
advice = "Few things in life are as important as house training your pet dinosaur."
# Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".
p advice.slice!('Few things in life are as important as ')
p advice

# As a bonus, what happens if you use the String#slice method instead?
# A: The String#slice method returns the same thing as String#slice!, but it doesn't mutate the calling string.
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice('Few things in life are as important as ')
p advice
