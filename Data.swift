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
        /*
         initialize an account
         add it to accounts
         
         */
        
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
       
        let customerAccountNumber1 = self.accounts[accountNumber1]
        let customerAccountNumber2 = self.accounts[accountNumber2]
        
        if var customerAccountNumber1 = customerAccountNumber1 {
            customerAccountNumber1.balance -= amount
            self.accounts[accountNumber1] = customerAccountNumber1

        }
        
        if var customerAccountNumber2 = customerAccountNumber2 {
            customerAccountNumber2.balance += amount
            self.accounts[accountNumber2] = customerAccountNumber2
        }
        
        
        
        
        //
        //        if let  , let customerAccountCheck2 = cAN2  {
        //
        //            customerAccountNumber2?.balance += amount
        //        }
        //
        //            self.accounts[customerAccountNumber1] = accountNumber1
        //            self.accounts[accountNumber1] = accountNumber1
        //            self.accounts[accountNumber2] = accountNumber2
    }
    
}


//see if both accounts exist
//deduct from 1 account
//add to another account
//save to the dictionary

//
//
//        /*
//         find the account associated with the transaction (not a problem if Transaction.to is an Account)
//         update the account
//         *save the new account into accounts*
//
//         To save into the Array:
//         iterate through the whole array until we find the right account
//         save the updated account info "in place"
//
//         To save into the Dictionary:
//         find the account instantly by key
//         save the updated value under the key
//         */

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

//struct Transaction {
//    var to: Account
//    var from: Account
//    var amount: Double
//    var date: Date
//    var description: String
//}






