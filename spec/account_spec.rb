# frozen_string_literal: true

require './lib/account.rb'

RSpec.describe Account do
  describe '#balance' do
    it 'has a default balance of 0' do
      expect(subject.balance).to eq(0)
    end
  end
end
