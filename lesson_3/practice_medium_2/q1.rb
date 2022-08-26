# Take a look at the following code and predict the output:
# A:
# 200
# 220
# 200
# The actual numbers will probably be different, but what matters is that #a and #c point to the same object, and #b points to a different object.
# NOTE: As of now, I will place a hash (#) before variables when referring to them in writing.
a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id
