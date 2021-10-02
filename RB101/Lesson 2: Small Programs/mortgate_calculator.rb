# Ask for the loan amount, APR and and loan duration in years.
# GET loan amount, APR and loan duration in years
# Validate loan amount, APR and loan duration in years
# ****************
# Calculate monthly payment.
# SET Monthly Interest rate = annual percentage rate/12
# SET loan duration in months = loan duration in years * 12
# SET monthly payment = nil
# Apply the formula
# ****************
# Display the monthly payment.
# Ask the user again if he wants another calculation.

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_positive_integer?(number)
  number.to_i().to_s() == number && number.to_i() >= 0
end

def valid_float?(number)
  number.to_f().to_s() == number && number.to_f() >= 0
end

def valid_integer_or_float?(number)
  valid_positive_integer?(number) || valid_float?(number)
end

prompt("Welcome to Mortgage Calculator!")

loop do # main loop
  loan_amount = nil

  loop do
    prompt("Please enter loan amount: ")
    loan_amount = Kernel.gets().chomp()

    if valid_positive_integer?(loan_amount)
      break
    else
      prompt("Hmm...that doesn't look like a valid loan amount")
    end
  end

  annual_interest_rate = nil

  loop do
    prompt("Please enter annual interest rate")
    annual_interest_rate = Kernel.gets().chomp()

    if valid_integer_or_float?(annual_interest_rate)
      break
    else
      prompt("Hmm...that doesn't look like valid annual interest rate")
    end
  end

  loan_duration_in_years = nil

  loop do
    prompt("Please enter loan duration in years")
    loan_duration_in_years = Kernel.gets().chomp()

    if valid_positive_integer?(loan_duration_in_years)
      break
    else
      prompt("Hmm...that that doesn't look like valid years")
    end
  end

  loan_amount = loan_amount.to_f()
  monthly_interest_rate = (annual_interest_rate.to_f() / 12) / 100
  loan_duration_in_months = loan_duration_in_years.to_i() * 12

  monthly_payment = loan_amount *
                    (monthly_interest_rate / (1 -
                    (1 + monthly_interest_rate)**(-loan_duration_in_months)))

  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

  prompt("Do you want to do another calculation? Type Y to continue")
  calculate_again = Kernel.gets().chomp()
  break unless calculate_again.downcase == 'y'
end

prompt("Thank you using mortgage caculator. Good Bye!")
