require 'transaction'

describe 'Transaction' do
  transaction = Transaction.new

  describe 'Initialize' do
    it 'Should include the current date' do
      expect(transaction.date).to eq Time.now.strftime('%d-%m-%Y')
    end
  end
end
