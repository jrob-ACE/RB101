require 'yaml'
require 'pry'

LANGUAGE = 'en'

MESSAGES = YAML.load_file('/home/tosh/Desktop/Launch_School/RB101/lesson_2/calculator_messages.yml')

def messages(message, lang=LANGUAGE)
  MESSAGES[lang][message]
end

def operation_to_message(op)
  case op
  when '1'
    messages('adding')
  when '2'
    messages('subtracting')
  when '3'
    messages('multiplying')
  when '4'
    messages('dividing')
  end
end

def valid_number?(input)
  /(^\d+\.?\d+$)|(^\d+$)|(^\.\d+$)|(^\d+\.$)/.match(input)
end

def number?(input)

end

def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt(messages('welcome'))

name = ''
loop do
  name = Kernel.gets.chomp

  if name.empty?
    prompt(messages('valid_name'))
  else
    break
  end
end

prompt("#{messages('hi')} #{name}!")
loop do  # main loop
  number1 = ''
  loop do
    prompt(messages('first_number'))
    number1 = Kernel.gets.chomp

    valid_number?(number1) ? break : prompt(messages('invalid_number'))
  end

  number2 = ''
  loop do
    prompt(messages('second_number'))
    number2 = Kernel.gets.chomp

    valid_number?(number2) ? break : prompt(messages('invalid_number'))
  end

  operator_prompt = <<~MSG
    #{messages('op_prompt')['l1']}
    #{messages('op_prompt')['l2']}
    #{messages('op_prompt')['l3']}
    #{messages('op_prompt')['l4']}
    #{messages('op_prompt')['l5']}
  MSG
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('choose_1234'))
    end
  end

  prompt("#{operation_to_message(operator)} #{messages('post_op_prompt')}")

  result = case operator
           when '1' then number1.to_i + number2.to_i
           when '2' then number1.to_i - number2.to_i
           when '3' then number1.to_i * number2.to_i
           when '4' then number1.to_f / number2.to_f
           end

  prompt("#{messages('result')} #{result}")

  prompt(messages('again'))
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?(messages('again_answer'))
end

prompt(messages('goodbye'))

# Things to think about:
# 1. Is there a better way to validate that the user has input a number? We'll cover this in more detail in a future assignment.
#
# Could use:
#   def valid_number?(num)
#     num.to_f.to_s == num
#   end
# It's also important to note that the user may want to input floats instead of integers, so using to_i may not be appropriate.

# 2. It looks like you can call to_i or to_f to convert strings to integers and floats, respectively. Look up the String#to_i and String#to_f documentation in Ruby docs and look at their various examples and use cases.
#
# Done.

# 3. Our operation_to_message method is a little dangerous, because we're relying on the case statement being the last expression in the method. What if we needed to add some code after the case statement within the method? What changes would be needed to keep the method working with the rest of the program? We'll show a solution in an upcoming assignment.
#
# If we needed to add some code after the case statement in this method, we'd need to either assign a variable to point to the result of the case statement, to allow us to return that value at the end of the method, or we could explicitly return the results within the case structure (in the case that we don't want the subsequent code within the method to run).

# 4. Most Rubyists don't invoke methods with parentheses, unless they're passing in an argument. For example, we use name.empty?(), but most Rubyists would write name.empty?. Some Rubyists even go as far as not putting parentheses around method calls even when passing in arguments. For example, they would write prompt "hi there" as opposed to prompt("hi there").
#
# For standard method calls, I'd prefer to use: prompt("hi there") to differentiate between standard and project methods.

# Try removing some of the optional parentheses when calling methods to get your eyes acquainted with reading different styles of Ruby code. This will be especially useful if you are using a DSL (domain specific language) written in Ruby, like Rspec or Rails.
#
# Done.  I prefer this anyway.

# 5. We're using Kernel.puts() and Kernel.gets(). But the Kernel. is extraneous as well as the parentheses. Therefore, we can just call those methods by gets and puts. We already know that in Ruby we can omit the parentheses, but how come we can also omit the Kernel.?
#

# 6. There are lots of messages(sprinkled )hroughout the program. Could we move them into some configuration file and access by key? This would allow us to manage the messages(much )asier, and we could even internationalize the messages( This )s just a thought experiment, and no need to code this up.
#
