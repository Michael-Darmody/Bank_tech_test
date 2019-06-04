# frozen_string_literal: true

require './lib/account.rb'

RSpec.describe Account do
  describe '#balance' do
    it 'has a default balance of 0' do
      expect(subject.balance).to eq(0)
    end
  end

  describe '#deposite' do
    it 'raises the total balance by a set amount' do
      expect { subject.deposite(10) }.to change { subject.balance }.by(10)
    end
  end
end
