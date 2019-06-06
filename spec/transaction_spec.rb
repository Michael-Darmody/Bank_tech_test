require './lib/transaction.rb'

RSpec.describe Transaction do
  let(:details) { {date: '05/06/19', credit: 200, debit: 100, balance: 100} }
  subject { described_class.new(details) }

  it 'Can show the date' do
    expect(subject.date).to eq('05/06/19')
  end

  it 'Can show the credit' do
    expect(subject.credit).to eq(200)
  end

  it 'Can show the debit' do
    expect(subject.debit).to eq(100)
  end

  it 'Can show the balance' do
    expect(subject.balance).to eq(100)
  end
end
