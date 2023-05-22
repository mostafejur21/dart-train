abstract class Account{
  int accountNumber;
  double balance;
  
  Account (this.accountNumber, this.balance);
  void deposit(double amount){
    balance += amount;
  }
  
  void withdraw(double amount);
}

class SavingsAccount extends Account{
  double interestRate;
  
  SavingsAccount(accountNumber, balance, this.interestRate) : super(accountNumber, balance);
  
  @override
  void withdraw(double amount){
    balance -= amount;
    
    double interestAmount = balance * (interestRate / 100);
    balance += interestAmount;
  }
  
}

class CurrentAccount extends Account{
  double overdraftLimit;
  
  CurrentAccount(accountNumber, balance, this.overdraftLimit) : super(accountNumber, balance);
  
  @override
  void withdraw(double amount){
    if(amount <= balance + overdraftLimit){
      balance -= amount;
      
    }
    else{
      
      print("Insufficient Funds, cannot withdraw this $amount!");
    }
  }
}

main(){
  SavingsAccount savingsAccount = SavingsAccount(102030, 1000, 3);
  
  print("initial Balance of savings account is ${savingsAccount.balance} taka.");
  
  savingsAccount.deposit(500);
  
  print("After deposit, the balance is ${savingsAccount.balance} taka");
  
  
  savingsAccount.withdraw(1000);
  
  print("After withdraw, now remaining balance with interest is ${savingsAccount.balance} taka");
  
  CurrentAccount currentAccount = CurrentAccount(11112222, 5000, 1000);
  
  print("Initial balance of current Account ${currentAccount.balance} taka");
  
  currentAccount.deposit(3000);
  
  print("After deposite, now balance is ${currentAccount.balance} taka");
  
  currentAccount.withdraw(9000);
  
  print("current balance after withdraw is ${currentAccount.balance} taka.");
  
}
