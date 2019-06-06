require './lib/printer'

RSpec.describe Printer do
  let(:details) { {date: '06/06/19', credit: 200, debit: 100, balance: 100} }
  let(:transactions) {[Transaction.new(details)]}
  subject { described_class.new(transactions) }

  it 'Creates an instance of a printer' do
    expect(subject).to be_an_instance_of(described_class)
  end
end
