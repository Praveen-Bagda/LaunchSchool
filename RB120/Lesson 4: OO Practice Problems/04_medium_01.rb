class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

# Ben is right. He is not missing '@' before 'balance' in the body of the 'positive_balance?'
#   method. Because he is calling getter method 'balance' that returns '@balance'. So '@balance'
#   & 'BankAccount#balance' returns the same object.