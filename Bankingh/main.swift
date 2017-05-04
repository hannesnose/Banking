import Foundation

let chase = Bank(accounts: [:])
dump(chase)

let hannesChecking = chase.createAccount(customer: "Hannes", balance: 1000, accountType: .checking)
let jeffChecking = chase.createAccount(customer: "Jeff", balance: 1000, accountType: .checking)
let hannesSavings = chase.createAccount(customer: "Hannes", balance: 1000, accountType: .savings)

chase.transfer(accountNumber1: hannesSavings, accountNumber2: 12, amount: 243)

dump(chase)

