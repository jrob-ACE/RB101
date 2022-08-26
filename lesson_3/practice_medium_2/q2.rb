# Let's take a look at another example with a small difference in the code:
a = 42
b = 42
c = a
# A:
# 205
# 205
# 205
# Due to the immutability of numbers (integers here), all numbers that have the same value reference the same object.  Because there is no way to mutate #c or #b, whenever their value is changed, they are actually just referencing a new object with a distinct object ID.

# Note that true, false, and nil are also immutable and behave in the same way.
puts a.object_id
puts b.object_id
puts c.object_id
