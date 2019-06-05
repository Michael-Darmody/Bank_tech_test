# frozen_string_literal: true

class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance >= amount && amount <= @balance
      @balance -= amount
    else
      raise "You have insufficient funds in your account"
    end
  end
end
