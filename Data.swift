//
//  Data.swift
//  Bankingh
//
//  Created by hannes nose on 4/25/17.
//  Copyright © 2017 hannes nose. All rights reserved.
//

import Foundation

class Bank {
    var accounts: [Int: Account]
    
    init(accounts: [Int: Account]) {
        self.accounts = accounts
    }
    
    func createAccount(customer: String, balance: Double, accountType: AccountType) -> Int{
        /* initialize an account and add it to accounts */
        
        let newAccount = Account(customer: customer, accountNumber: nextAccountNumber(accounts: accounts), balance: balance, accountType: accountType)
        accounts[newAccount.accountNumber] = newAccount
        return newAccount.accountNumber
    }
    
    func nextAccountNumber(accounts: [Int: Account]) -> Int {
        if let max = accounts.keys.max() {
            return max + 1
        } else {
            return 0
        }
    }
    
    
    func deposit(accountNumber: Int, amount: Double) {
        guard amount > 0 else {
            return
        }
        
        let customerAccount = self.accounts[accountNumber]  // pulled out the account
        if var customerAccount = customerAccount {
            customerAccount.balance += amount
            // updated the account
            self.accounts[accountNumber] = customerAccount
            // save the account
        }
        
    }
    
    func withdraw(accountNumber: Int, amount: Double) {
        guard amount > 0 else {
            return
        }
        
        let customerAccount = self.accounts[accountNumber]
        if var customerAccount = customerAccount {
            customerAccount.balance -= amount
            // updated the account
            self.accounts[accountNumber] = customerAccount
            // save the account
        }
    }
    
    func transfer(accountNumber1: Int, accountNumber2: Int, amount: Double ) {
        
        guard self.accounts.keys.contains(accountNumber1) && self.accounts.keys.contains(accountNumber2) else {
            return
        }
        
        self.accounts[accountNumber1]?.balance -= amount
        self.accounts[accountNumber2]?.balance += amount

    }
    
 }

struct Account {
    var customer: String
    var accountNumber: Int
    var balance: Double
    var accountType: AccountType
}

enum AccountType {
    case checking
    case savings
}

