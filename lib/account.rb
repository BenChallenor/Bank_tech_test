class Account
  attr_reader :balance, :printer, :history

  def initialize(history = History.new)
    @balance = 0
    @history = history
  end

  def deposit(amount)
    @balance += amount
    transaction = Transaction.new(:credit, amount, balance)
    history.transactions << transaction
  end

  def withdraw(amount)
    @balance -= amount
    transaction = Transaction.new(:debit, amount, balance)
    history.transactions << transaction
  end

  def print_statement
    history.print_statement
  end
end
