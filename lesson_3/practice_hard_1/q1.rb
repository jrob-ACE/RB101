# What do you expect to happen when the greeting variable is referenced in the last line of the code below?
# A: I expected an exception to be raised, since #greeting hasn't been initialized (skipped since the if conditional is false).  As it turns out, #greeting is set to nil.
# When you initialize a local variable within an if block, even if that if block doesn’t get executed, the local variable is initialized to nil.
if false
  greeting = "hello world"
end

p greeting
