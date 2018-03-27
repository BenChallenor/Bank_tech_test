
class Account
  attr_reader :balance, :transactions, :date

  def initialize
    @balance = 0
    @transactions = []
    @date = Time.now.strftime('%d-%m-%Y')
  end

  def deposit(amount)
    @balance += amount
    transaction = Transaction.new(date, amount, balance)
    @transactions << (transaction)
  end

  def withdraw(amount)
    @balance -= amount
  end
end
