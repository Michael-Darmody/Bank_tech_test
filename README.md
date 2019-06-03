# Bank_tech_test

A banking app that can be run through the terminal.

## The Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### User Stories
```
As a customer
So I can put my savings into my account
I'd like to be able to deposit money

As a customer
So I can spend some of my savings
I'd like to be able to withdraw money from my account

As a customer
So I can see when I add or remove money
I'd like to see the date of when I made a transaction

As a customer
So I can see what's gone in and out of my account
I'd like to be able to print a bank statement

As a Banker
To prevent a customer from withdrawing too much money
I want my system to check wether they have sufficient funds
```
