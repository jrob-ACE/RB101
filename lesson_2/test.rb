def test(val)
  p val.object_id
end

a = 5
b = '6'
c = ['hello', 525]

p a.object_id
test(a)
p b.object_id
test(b)
p c.object_id
test(c)
