require 'account'

describe 'Account' do
  account = Account.new

  describe 'Initialize' do
    it 'Should create an initial balance of 0' do
      expect(account.balance).to eq 0
    end
  end

  describe 'Deposit' do
    it 'Should add amount to balance' do
      account.deposit(20)
      expect(account.balance).to eq 20
    end
  end
end
