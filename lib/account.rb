# frozen_string_literal: true
require_relative 'transaction'
require_relative 'transaction_history'

class Account
  attr_reader :balance, :transactions

  def initialize(transactions = TransactionHistory.new)
    @balance = 0
    @transactions = transactions
  end

  def deposit(amount, date = Time.new.strftime('%d/%m/%y'), transaction = Transaction)
    @balance += amount
    details = { date: date, credit: amount, debit: 0, balance: @balance}
    update_transaction(transaction.new(details))
  end

  def withdraw(amount, date = Time.new.strftime('%d/%m/%y'), transaction = Transaction)
    if @balance >= amount && amount <= @balance
      @balance -= amount
      details = { date: date, credit: 0, debit: amount, balance: @balance}
      update_transaction(transaction.new(details))
    else
      raise "You have insufficient funds in your account"
    end
  end

private
  def update_transaction(transaction)
    @transactions.record(transaction)
  end
end
