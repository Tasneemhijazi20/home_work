/*Q1. Sum, Average & Compare - Ask the user for three numbers.
 - Print their sum and average. 
Then, check if the average is greater than 50 or not.  */
import 'dart:io';

void main() {
  print('Enter the first number');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Enter the second number');
  int num2 = int.parse(stdin.readLineSync()!);
  print('Enter the thrid number');
  int num3 = int.parse(stdin.readLineSync()!);
  int sum = num1 + num2 + num3;
  double average = sum / 3;
  print('sum = $sum and average = $average ');
  if (average > 50) {
    print('the Average is greater than 50');
  } else {
    print('the Average not greater than 50');
  }
}
