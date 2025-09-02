/* Q9
Create a function that takes two integers as parameters and prints 
which one is larger.*/
void main() {
  int x = 23;
  int y = 13;
  maxNumber(x, y);
}

void maxNumber(int num1, int num2) {
  if (num1 > num2) {
    print('$num1 is larger than $num2');
  } else {
    print('$num2 is larger than $num1');
  }
}
