import 'dart:io';

class bank{
  late int accountNo;
  late String userName;
  late String email;
  late String accountType;
  late int accountBalance;

  void get(accountNo, userName, email, accountType, accountBalance){
    this.accountNo=accountNo;
    this.userName=userName;
    this.email=email;
    this.accountType=accountType;
    this.accountBalance=accountBalance;
  }
  void display(){
    print("Account Number : $accountNo");
    print("Username : $userName");
    print("User email : $email");
    print("Account Type : $accountType");
    print("Account Balance : $accountBalance");
  }
}
void main(){
  bank one=new bank();
  one.get(1092,"Dhruv","dhruv@email.com","Saving",24500);
  one.display();
}