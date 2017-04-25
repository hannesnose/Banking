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
    
    func createAccount(customer: String, balance: Double, accountType: AccountType){
        /*
         initialize an account
         add it to accounts
 */
        let newAccount = Account(customer: customer, accountNumber: nextAccountNumber(accounts: accounts), balance: balance, accountType: accountType)
        accounts[newAccount.accountNumber] = newAccount
    }
    
    func nextAccountNumber(accounts: [Int: Account]) -> Int {
        if let max = accounts.keys.max() {
            return max + 1
        } else {
            return 0
        }
    }
    
    
    func deposit(transaction: Transaction) {
        /*
         find the account associated with the transaction (not a problem if Transaction.to is an Account)
         update the account
         *save the new account into accounts*
         
         To save into the Array:
         iterate through the whole array until we find the right account
         save the updated account info "in place"
         
         To save into the Dictionary:
         find the account instantly by key
         save the updated value under the key
         */
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

struct Transaction {
    var to: Account
    var from: Account
    var amount: Double
    var date: Date
    var description: String
}
