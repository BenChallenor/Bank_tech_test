class Statement
  def print_statement(transactions)
    puts 'date || credit || debit || balance'
    transactions.reverse.each do |x|
      if x.type == :debit
        puts "#{x.date} || || #{x.amount} || #{x.balance}"
      else
        puts "#{x.date} || #{x.amount} || || #{x.balance}"
      end
    end
  end
end
