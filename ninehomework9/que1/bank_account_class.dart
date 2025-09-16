class BankAccount {
  double? _balance;
  set balance(double balance) {
    if (balance < 0) {
      print('Invalid balanc');
    } else {
      this._balance = balance;
    }
  }

  double? get balance => this._balance;
}
