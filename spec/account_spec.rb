# frozen_string_literal: true

require './lib/account.rb'

RSpec.describe Account do
  describe '#balance' do
    it 'has a default balance of 0' do
      expect(subject.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'raises the total balance by a set amount' do
      expect { subject.deposit(10) }.to change { subject.balance }.by(10)
    end
  end

  describe '#withdraw' do
    it 'lowers the total balance by a set amount' do
      subject.deposit(20)
      expect { subject.withdraw(10) }.to change { subject.balance }.by(-10)
    end

    it 'raises an error if there are no funds to withdraw' do
      expect { subject.withdraw(10) }.to raise_error "You have insufficient funds in your account"
    end
  end
end
