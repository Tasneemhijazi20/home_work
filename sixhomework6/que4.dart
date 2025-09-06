/*Q4. Simple List Analyzer - Let the user enter 5 numbers into a list.
 - Print the largest and smallest numbers, 
 and then calculate the difference between them.  */

import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 0; i < 5; i++) {
    print('Enter number ');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  int minNumbers = numbers[0];
  int maxNumbers = numbers[0];
  for (var element in numbers) {
    if (minNumbers > element) {
      minNumbers = element;
    }
    if (maxNumbers < element) {
      maxNumbers = element;
    }
  }
  print('max number = $maxNumbers and min number = $minNumbers');
  int difference = maxNumbers - minNumbers;
  print('the difference between them = $difference');
}
