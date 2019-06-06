require './lib/transaction_history'

RSpec.describe TransactionHistory do
  let(:a_transaction) { {date: '06/06/19', credit: 200, debit: 100, balance: 100} }
  subject { described_class.new }

  it 'Can be initialized with an empty array' do
    expect(subject.transactions).to eq([])
  end
end
