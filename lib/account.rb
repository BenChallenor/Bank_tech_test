
class Account
  attr_reader :balance, :transactions, :date

  def initialize
    @balance = 0
    @transactions = []
    @date = Time.now.strftime('%d-%m-%Y')
  end

  def deposit(credit)
    @balance += credit
    transaction = Transaction.new(date, credit, 0, balance)
    @transactions << transaction
  end

  def withdraw(debit)
    @balance -= debit
    transaction = Transaction.new(date, 0, debit, balance)
    @transactions << transaction
  end

  def print_statement
    puts 'date || credit || debit || balance'
    @transactions.each do |x|
      puts "#{x.date} || #{x.credit} || #{x.debit} || #{x.balance}"
    end
  end
end
