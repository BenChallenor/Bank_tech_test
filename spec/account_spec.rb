require 'account'

describe 'Account' do
  account = Account.new

  describe 'Initialize' do
    it 'Should create an initial balance of 0' do
      expect(account.balance).to eq 0
    end
  end
end
