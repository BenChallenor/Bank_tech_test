# Bank tech test

A bank application that simulates depositing, withdrawing and printing an account statement.


### User stories:

```
As an account holder
So I can save money
I want to be able to deposit money

As an account holder
So I can spend money
I want to be able to withdraw money

As an account holder
So I can keep track of my money
I want to be able to print my bank statement
```

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

### Approach

* I started by creating the above user stories in order to break down the task.
* As I worked thorough the test I decided that I would use a second class to take the responsibility of the transactions.
* TDD: I ensured I wrote simple unit tests before writing my code.

### Further work

* My code doesn't strictly follow the layout of the statement criteria. I would like to address this.
* I would like to use a third class to be responsible for creating the statement.
* Create further methods in order to keep the classes small.
* Use Timecop in order to mock time.


## How to use

* Clone the repo.
* Run bundle install.
* Interact using IRB.

## Running the tests

* rspec

## Example of use

```plain
2.5.0 :001 > require './lib/account.rb'
 => false
2.5.0 :002 > account = Account.new
 => #<Account:0x00007f9b638c6a80 @balance=0, @transactions=[], @date="27-03-2018">
2.5.0 :003 > account.deposit(50)
 => [#<Transaction:0x00007f9b638bf5a0 @date="27-03-2018", @credit=50, @debit=0, @balance=50>]
2.5.0 :004 > account.withdraw(15)
 => [#<Transaction:0x00007f9b638bc0f8 @date="27-03-2018", @credit=0, @debit=15, @balance=35>, #<Transaction:0x00007f9b638bf5a0 @date="27-03-2018", @credit=50, @debit=0, @balance=50>]
2.5.0 :005 > account.print_statement
date || credit || debit || balance
27-03-2018 || || 15.00 || 35.00
27-03-2018 || 50.00 || || 50.00
```
