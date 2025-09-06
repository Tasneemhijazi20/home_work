/*Q5. Multiplication Table with Sum - Ask the user for a number.
 - Print its multiplication table up to 10, then calculate the sum of all results.  */
import 'dart:io';

void main() {
  print('please enter a number ?');
  int num = int.parse(stdin.readLineSync()!);
  int sumOfMultiplication = 0;
  for (int i = 1; i <= 10; i++) {
    int mult = i * num;
    sumOfMultiplication += mult;
    print('$num * $i = $mult');
  }

  print(sumOfMultiplication);
}
