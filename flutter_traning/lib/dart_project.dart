import 'dart:io';

void main() {}

class Account {
  int accountNumber;
  String ownerName;
  double balance;
  String accountType;

  Account(
      {required this.accountNumber,
      required this.ownerName,
      required this.balance,
      required this.accountType});

  void createAccount() {
    print('Enter your account number: ');
    int accountNumber = int.parse(stdin.readLineSync()!);
    print('Enter your owner name: ');
    String ownerName = stdin.readLineSync()!;
    print('Enter your account type: ');
    String accountType = stdin.readLineSync()!;
    print('Enter your account balance: ');
    double balance = double.parse(stdin.readLineSync()!);
    print(
        'To confirm, your account number is: $accountNumber ,account owner name is: $ownerName, account type is: $accountType and balance is: $balance');
  }

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposit of $amount successful. New balance: $balance');
    } else {
      print('Invalid deposit amount.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0) {
      if (balance >= amount) {
        balance -= amount;
        print('Withdrawal of $amount successful. New balance: $balance');
      } else {
        print('Insufficient funds.');
      }
    } else {
      print('Invalid withdrawal amount.');
    }
  }
}

class Bank {
  List<Account> accounts;
  Bank({
    required this.accounts,
  });
}

class SavingsAccount extends Account {
  SavingsAccount(
      {required super.accountNumber,
      required super.ownerName,
      required super.balance,
      required super.accountType});
}

class CheckingAccount extends Account {
  
  CheckingAccount(
      {required super.accountNumber,
      required super.ownerName,
      required super.balance,
      required super.accountType});
}
