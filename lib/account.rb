class Account
  attr_reader :balance, :printer

  def initialize(printer = Printer.new)
    @balance = 0
    @printer = printer
  end

  def deposit(amount)
    @balance += amount
    transaction = Transaction.new(:credit, amount, balance)
    printer.transactions << transaction
  end

  def withdraw(amount)
    @balance -= amount
    transaction = Transaction.new(:debit, amount, balance)
    printer.transactions << transaction
  end

  def print_statement
    printer.print_statement
  end

end
