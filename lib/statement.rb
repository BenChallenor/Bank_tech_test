class Statement

  Header = 'date || credit || debit || balance'

  def print_statement(transactions)
    puts Header
    transactions.reverse.each do |x|
      if x.type == :debit
        puts "#{x.date} || || #{x.amount}.00 || #{x.balance}.00"
      else
        puts "#{x.date} || #{x.amount}.00 || || #{x.balance}.00"
      end
    end
  end
end
