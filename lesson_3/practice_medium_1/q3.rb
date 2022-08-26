# Alan wrote the following method, which was intended to show all of the factors of the input number:
# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end
# Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the l oop. How can you make this work without using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.
def factors(number)
  if (number > 0)
    divisor = number
    factors = []

    while divisor > 0
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end

    factors
  else
    puts("Invalid input. Number to be factored must be greater than 0.")
  end
end

p factors(18)

# Bonus 1
# What is the purpose of the number % divisor == 0 ?
# A: number % divisor == 0 tells the program which numbers to include in factors.
# Bonus 2
# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# A: factors was placed where it was to ensure that it was returned.

