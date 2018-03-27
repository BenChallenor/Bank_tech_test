
class Transaction
  attr_accessor :date, :amount, :balance

  def initialize(date, amount, balance)
    @date = Time.now.strftime('%d-%m-%Y')
    @amount = amount
    @balance = balance
  end
end
