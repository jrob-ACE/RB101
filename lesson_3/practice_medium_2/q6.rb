# How could the following method be simplified without changing its return value?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# A: Since the conditional statements return true or false, there's no need to add the if/else/end structure.
def color_valid2(color)
  color == "blue" || color == "green"
end

puts color_valid2("green")
