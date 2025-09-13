/*Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result
 is a single digit. Print the final single-digit result.
  (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)  */
import 'dart:io';

void main() {
  print('Enter a number');
  int number = int.parse(stdin.readLineSync()!);
  var numbers = number.toString().split('');
  int sum = 0;
  numbers.forEach((String n) {
    sum += int.parse(n);
  });
  var sumlength = sum.toString().split('');
  int finalsum = 0;
  while (sumlength.length > 1) {
    sum = 0;
    sumlength.forEach((String num) {
      sum += int.parse(num);
    });
    sumlength = sum.toString().split('');
  }
  finalsum = sum;
  print(finalsum);
}
