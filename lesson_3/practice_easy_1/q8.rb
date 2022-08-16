flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# array = (flintstones.select { |name, number| name == "Barney"}).to_a.flatten
array = flintstones.assoc("Barney")

p array
