/* Q6 Create a class NumberCheck with an attribute value. Add a method isEven() 
that returns true if the number is even, false otherwise. In main(), 
test the method with one number.*/
void main() {
  NumberCheck num = NumberCheck(value: 34);
  print('${num.value} is even ? ${num.isEven()}');
}

class NumberCheck {
  int? value;
  NumberCheck({required int value}) {
    this.value = value;
  }
  bool isEven() {
    return this.value! % 2 == 0;
  }
}
