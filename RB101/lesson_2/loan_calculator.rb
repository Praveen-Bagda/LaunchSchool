def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_positive_integer?(num)
  num.to_i().to_s() == num && num.to_i() > 0
end

def valid_positive_float?(num)
  num.to_f().to_s() == num && num.to_f() > 0
end

def valid_positive_integer_or_float?(rate)
  valid_positive_integer?(rate) || valid_positive_float?(rate)
end

prompt("Welcome to Loan Calculator!")
prompt("---------------------------")

loop do
  loan_amount = ''
  loop do
    prompt("Please enter Loan Amount")
    loan_amount = Kernel.gets().chomp()
    if valid_positive_integer_or_float?(loan_amount)
      break
    else
      puts("Not Valid. Please enter valid positive Loan Amount")
    end
  end

  annual_percentage_rate = ''
  loop do
    prompt("Please enter Annual Percentage Rate")
    prompt("(Example: 5 for 5% or 2.5 for 2.5%)")
    annual_percentage_rate = Kernel.gets().chomp()
    if valid_positive_integer_or_float?(annual_percentage_rate)
      break
    else
      puts("Not Valid. Please enter valid Annual Percentage Rate")
    end
  end

  loan_duration_in_years = ''
  loop do
    prompt("Please enter loan duration in years")
    prompt("(Example: 5 for 5 years or 2 for 2 years)")
    loan_duration_in_years = Kernel.gets().chomp()
    if valid_positive_integer?(loan_duration_in_years)
      break
    else
      prompt("Not valid. Please enter valid months")
    end
  end

  loan_duration_in_months = loan_duration_in_years.to_i() * 12
  monthly_percentage_rate = (annual_percentage_rate.to_f() / 100) / 12
  monthly_payment = loan_amount.to_f() * (monthly_percentage_rate / (1 - (1 + monthly_percentage_rate)**(-loan_duration_in_months.to_i())))
  monthly_percentage_rate *= 100

  Kernel.puts("Your monthly interest rate is: #{format('%.2f', monthly_percentage_rate)}%")
  Kernel.puts("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

  prompt("Do you want to do another calculation? Please enter y to continue")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y') 
end

prompt("Thankyou for using Loan Calculator!")
prompt("Good bye!")