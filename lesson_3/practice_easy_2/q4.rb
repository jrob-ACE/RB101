# See if the name "Dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."
term = 'Dino'

advice.match?(term) ? puts("'#{term}' was found in: #{advice}") : puts("'#{term}' was not found in: #{advice}")
