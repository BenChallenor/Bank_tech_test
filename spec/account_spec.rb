require 'account'
require 'history'


describe 'Account' do
  account = Account.new

  describe 'Initialize' do
    it 'Should create an initial balance of 0' do
      expect(account.balance).to eq 0
    end
  end

  describe 'Print statement' do
    it 'Should print the statement header' do
      msg = "date || credit || debit || balance\n"
      expect { account.print_statement }.to output(msg).to_stdout
    end
  end

  describe 'Deposit' do
    it 'Should add amount to balance' do
      account.deposit(20)
      expect(account.balance).to eq 20
    end

    it 'Should add array to transactions' do
      expect(account.history.transactions.length).to eq 1
    end
  end

  describe 'Withdraw' do
    it 'Should decrease amount from balance' do
      account.withdraw(5)
      expect(account.balance).to eq 15
    end

    it 'Should add array to transactions' do
      expect(account.history.transactions.length).to eq 2
    end
  end

  describe 'Print statement' do
    it 'Should print the transactions in statement' do
      expect { account.print_statement }.to output(
        "date || credit || debit || balance\n" \
        "#{Time.now.strftime('%d-%m-%Y')} || || 5.00 || 15.00\n" \
        "#{Time.now.strftime('%d-%m-%Y')} || 20.00 || || 20.00\n"
      ).to_stdout
    end
  end
end
