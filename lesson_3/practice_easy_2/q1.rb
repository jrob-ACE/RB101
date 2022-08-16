# In this hash of people and their age, see if "Spot" is present.
# Bonus: What are two other hash methods that would work just as well for this solution?
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.assoc("Spot") ? puts("Spot is here!") : puts("Spot is not here...")
ages.key?("Spot") ? puts("Spot is here!") : puts("Spot is not here...")
ages["Spot"] ? puts("Spot is here!") : puts("Spot is not here...")
