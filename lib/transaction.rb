
class Transaction
  attr_accessor :date, :credit, :debit, :balance

  def initialize(date, credit, debit, balance)
    @date = Time.now.strftime('%d-%m-%Y')
    @credit = credit
    @debit = debit
    @balance = balance
  end
end
