import Foundation

let chase = Bank(accounts: [:])
dump(chase)

chase.createAccount(customer: "Hannes", balance: 1000, accountType: .checking)
chase.createAccount(customer: "Jeff", balance: 80, accountType: .checking)
dump(chase)



//class BankAccount {
//    var currentBalanceChecking: Float
//    var currentBalanceSavings: Float
//    var transaction: Float
//    var transactionDescription: String
//
//
//    init(currentBalanceChecking: Float, currentBalanceSavings: Float,transaction: Float, transactionDescription:String) {
//        self.currentBalanceChecking = currentBalanceChecking
//        self.transaction = transaction
//        self.transactionDescription = transactionDescription
//        self.currentBalanceSavings = currentBalanceSavings
//    }
//
//    // Prevent negative deposits
//
//    func checkIfNumberIsNegative(input:Float) -> Float {
//        if input <= 0  {
//            print("\(input) is not a authorized amount.  Please check deposit")
//        }
//        return input
//    }
//
//    //Making withdrawals with funds from checking account
//
//    func withdrawalTransactionFromChecking (transaction: Float, transactionDescription: String){
//
//        if transaction > currentBalanceChecking || transaction <= 0 {
//            print("You have insufficient funds for your transaction.",currentBalanceChecking, "is your current balance. Step your game up!")
//        } else {
//            let deductedAmount = currentBalanceChecking - transaction
//            currentBalanceChecking = deductedAmount
//            print("Item: \(transactionDescription). Amount: $\(transaction). You have $\(currentBalanceChecking) left in your checking account")
//        }
//    }
//
//    // Depositing money into your checking account
//
//    func depositFundsInChecking(currentCheckingBalance: Float, transaction: Float)->Float {
//        if transaction <= 0 {
//            print("You are attempting a transaction that can not be completed")
//        } else {
//            let deposit = currentBalanceChecking + checkIfNumberIsNegative(input: transaction)
//            currentBalanceChecking = deposit
//        }
//        return currentBalanceChecking
//    }
//
//    // Depositing money into your savings account
//
//    func depositFundsInSavings(currentSavingsBalance: Float, transaction: Float)->Float {
//        if transaction <= 0 {
//            print("You are attempting a transaction that can not be completed")
//        } else {
//            let deposit = currentSavingsBalance + checkIfNumberIsNegative(input: transaction)
//            let currentBalanceSavings = deposit
//            //let currentSavingsBalance = currentBalanceSavings
//        }
//        return currentBalanceSavings
//    }
//
//
//    // Transferring money from Savings account to Checking account
//
//    func transferFundsFromSavingstoCheckingAccount(currentSavingsBalance: Float, transaction: Float) -> Float{
//        if transaction <= 0 {
//            print("\(transaction) is not a authorized amount.  Please check deposit")
//        } else if currentSavingsBalance <= 0 || transaction > currentSavingsBalance {
//            print("\(currentSavingsBalance) is not a sufficient for the transaction action you are trying to perform")
//        } else {
//            let transferFromSavingstoChecking = currentBalanceSavings - transaction
//            let transferred = transaction + currentBalanceChecking
//            currentBalanceChecking =  transferred
//            currentBalanceSavings  = transferFromSavingstoChecking
//            print("You transferred $\(transaction) to your checking. Current balance of account is $\(currentBalanceSavings)")
//        }
//
//        return currentBalanceChecking
//
//    }
//
//    // Transferring money from Checking account to Savings account
//
//    func transferFundsFromChecktoSavingsAccount(currentCheckingBalance: Float, transaction: Float) -> Float{
//        if transaction <= 0 {
//            print("\(transaction) is not a authorized amount.  Please check deposit")
//        } else if currentCheckingBalance <= 0 || transaction > currentCheckingBalance {
//            print("\(currentCheckingBalance) is not a sufficient for the transaction action you are trying to perform")
//        } else {
//            let transferFromCheckingstoSavings = currentCheckingBalance - transaction
//
//            let transferred = transaction + currentBalanceSavings
//            currentBalanceSavings =  transferred
//            currentBalanceChecking  = transferFromCheckingstoSavings
//            print("You transferred $\(transaction) to your savings. Current balance of account is $\(currentBalanceChecking)")
//        }
//
//        return currentBalanceSavings
//
//    }
//}









