/*Q1 
Create a class BankAccount with a private field _balance. 
- Add a getter balance that returns the balance. 
- Add a setter balance that prevents setting it to a negative value
 (print 'Invalid balance' if attempted). 
- In main(), demonstrate creating an account, updating the balance, 
and trying to set a negative balance.  */
import 'bank_account_class.dart';

void main() {
  BankAccount nemAccount = BankAccount();
  nemAccount.balance = -2000.5;
  nemAccount.balance = 2550.3;
  print(nemAccount.balance);
}
