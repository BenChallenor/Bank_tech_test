require 'transaction'


describe Transaction do
  subject(:transaction) do
    described_class.new(Time.now.strftime('%d-%m-%Y'),
                        50, 100)
  end

  describe 'Initialize' do
    it 'Should include the current date' do
      expect(transaction.date).to include Time.now.strftime('%d-%m-%Y')
    end
  end

  it 'Should include an amount' do
    expect(transaction.amount).to eq(50)
  end

  it 'Should include a balance' do
    expect(transaction.balance).to eq(100)
  end
end
