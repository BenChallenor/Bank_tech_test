require 'account'
require 'transaction'

describe 'Account' do
  account = Account.new

  describe 'Initialize' do
    it 'Should create an initial balance of 0' do
      expect(account.balance).to eq 0
    end

    it 'Should create an empty transaction array' do
      expect(account.transactions).to eq []
    end
  end

  describe 'Deposit' do
    it 'Should add amount to balance' do
      account.deposit(20)
      expect(account.balance).to eq 20
    end

    it 'Should add array to transactions' do
      expect(account.transactions.length).to eq 1
    end
  end

  describe 'Withdraw' do
    it 'Should decrease amount from balance' do
      account.withdraw(5)
      expect(account.balance).to eq 15
    end
  end
end
