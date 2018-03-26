# Bank tech test

A bank application that simulates depositing, withdrawing and printing an account statement.


## How to run

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
