require 'printer'

describe 'Printer' do
  printer = Printer.new

  describe 'Print statement' do
    it 'Should print the statement header' do
      msg = "date || credit || debit || balance\n"
      expect { account.print_statement }.to output(msg).to_stdout
    end
  end

end
