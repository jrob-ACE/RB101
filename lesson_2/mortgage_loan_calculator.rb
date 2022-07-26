# Build mortgage loan calculator: https://launchschool.com/lessons/a0f3cd44/assignments/4ad62c1d
#
# Inputs:
# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
#
# Intermediate values:
# monthly interest rate
# loan duration in months
#
# Output:
# monthly payment
#
# m = p * (j / (1 - (1 + j)**(-n)))
# where:
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

# Informal Pseudo-code:
# -welcome user to mortgage loan calculator.
# -ask user for the loan amount
#   -store the loan amount as the principal variable
#   -validate that the principal is a number (float or integer)
# -ask user for the annual percentage rate (APR)
#   -store the APR in the annual_rate variable
#   -validate that the loan duration is a number (float or integer)
# -ask user for the loan duration
#   -store the loan duration in the duration variable
#   -validate that the loan duration is a number (float or integer)
# -calculate the monthly interest rate and store it in the monthly_rate variable
# -calculate the loan duration in months and store it in the duration_months variable
# -calculate the monthly payment using the above equation and store it in the monthly_payment variable
# -output monthly_payment to the user

# Formal Pseudo-code:
# START
# PRINT a message to the user saying, ">> Welcome to Mortgage Loan Calculator!"
#
# PRINT a message to the user saying, ">> Enter a mortgage loan amount:"
# GET the total mortgage loan amount from the user and
# SET principal = total mortgage loan amount entered
# CALL a subprocess that checks that principal is a positive integer or float greater than 0
# WHILE input is not a valid number
#   PRINT a message to the user saying, ">> Invalid entry."
#   Repeat the previous
#
# PRINT a message to the user saying, ">> Enter the annual percentage rate (APR) in percentage form:"
# GET the APR from the user and
# SET annual_rate = APR entered
# CALL a subprocess that checks that annual_rate is a positive integer or float greater than 0
# WHILE input is not a valid number
#   PRINT a message to the user saying, ">> Invalid entry."
#   Repeat the previous
#
# PRINT a message to the user saying, ">> Enter the duration of the loan in years:"
# SET duration = the duration of the loan enetered
# CALL a subprocess that checks that duration is a positive integer or float greater than 0
# WHILE input is not a valid number
#   PRINT a message to the user saying, ">> Invalid entry."
#   Repeat the previous
#
# SET monthly_rate = annual_rate / 12
# SET duration_months = duration * 12
# SET monthly_payment = principal * (monthly_rate / (1 - (1 + monthly_rate)**(-duration_months)))
# SET monthly_payment = monthly_payment rounded up to the nearest penny
# PRINT a messsage to the user saying, ">> Calculating monthly mortgage payment..."
# PRINT a message to the user saying, ">> The monthly payment for this loan is $#{monthly_payment}."
#
# PRINT a message to the user saying, ">> Would you like to perform another mortgage calculation? (Y to calculate again.)"
# GET the answer from the user and
# SET again = answer from the user (lowercased)
# IF again == "y"
#   perform the calculation again (whole calculation in a main loop)
# ELSE
#   break out of the main calculation loop
#
# PRINT "Thank you for using Mortgage Loan Calculator!"
# END
#
# ! Remember to convert to floats or rational numbers to make calculations

def prompt(text)
  puts ">> #{text}"
end

def valid_number?(input)
  /(^\d+\.?\d+$)|(^\d+$)|(^\.\d+$)|(^\d+\.$)/.match(input)
end

def get_input(text)
  loop do
    prompt(text)
    input = gets.chomp
    if valid_number?(input)
      return input
    end
    prompt("Invalid input.")
  end
end

prompt("Welcome to Mortgage Loan Calculator!")
loop do
  principal = get_input("Enter a mortgage loan amount:").to_f
  annual_rate = get_input("Enter the annual percentage rate (APR) as a percent:").to_f
  duration = get_input("Enter the duration of the loan in years:").to_f

  monthly_rate = annual_rate / 100 / 12 # convert from APR in % to monthly rate in decimal
  duration_months = duration * 12
  monthly_payment = (principal * (monthly_rate / (1 - (1 + monthly_rate)**(-duration_months)))).round(2)

  prompt("Calculating monthly mortgage payment...")
  prompt("The monthly payment for this loan is $#{format("%0.2f", monthly_payment)}")

  prompt("Would you like to perform another calculation? (Y to calculate again.)")
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt("Thank you for using Mortgage Loan Calculator!")
