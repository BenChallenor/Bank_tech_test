class History
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def print_statement
    @statement = Statement.new
    @statement.print_statement(transactions)
  end
end
