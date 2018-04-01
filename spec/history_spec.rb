require 'account'


describe 'History' do
  account = Account.new

  it 'Should create an empty transaction array' do
    expect(account.history.transactions).to eq []
  end
end
