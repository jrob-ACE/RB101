# From:  https://launchschool.com/lessons/a0f3cd44/assignments/1540db7b

# Build a command line calculator program that does the following:
# - asks for two numbers
# - asks for the type of operation to perform: add, subtract, multiply or divide
# - displays the result

# Use the Kernel.gets() method to retrieve user input, and use Kernel.puts() method to display output.
def input_num?(input)
  if input.to_f.to_s == input
    return true
  elsif input.to_i.to_s == input
    return true
  else
    return false
  end
end

def get_number()
  loop do
    Kernel.puts ">> Enter a number:"
    input = Kernel.gets.chomp
    if input_num?(input)
      return input.to_f
    else
      puts ">> Invalid input."
    end
  end
end

# Method to return a string of an integer or float.  Input is a float.  If the float is equivalent to an integer, represent the number as an integer.
def num_s(num)
  num == num.to_i ? num.to_i.to_s : num.to_s
end

# calculator(float, float) => float
#
# Prints answer and returns the answer as a float.
def calculator(num1, num2)
  loop do
    Kernel.puts ">> Which operation do you want to perform (add, subtract, multiply, divide)?:"
    operation = Kernel.gets.chomp.downcase

    case operation
    when "add"
      puts "#{num_s(num1)} + #{num_s(num2)} is #{num_s(num1 + num2)}"
      return num1 + num2
    when "subtract"
      puts "#{num_s(num1)} - #{num_s(num2)} is #{num_s(num1 - num2)}"
      return num1 - num2
    when "multiply"
      puts "#{num_s(num1)} * #{num_s(num2)} is #{num_s(num1 * num2)}"
      return num1 * num2
    when "divide"
      if num2 != 0
        puts "#{num_s(num1)} / #{num_s(num2)} is #{num_s(num1 / num2)}"
        return num1 / num2
      else
        return ">> Error. Cannot divide by 0."
      end
    else
      puts ">> Invalid input.  Please input a valid operation."
    end
  end
end

puts "Welcome to the calculator!  Just give me two numbers and an operation and watch me work!"
num1 = get_number()
num2 = get_number()

calculator(num1, num2)
