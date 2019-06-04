# frozen_string_literal: true

class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposite(number)
    @balance += number
  end

  def withdraw(number)
    if @balance >= number && number <= @balance
      @balance -= number
    else
      raise "You have insufficient funds in your account"
    end
  end
end
