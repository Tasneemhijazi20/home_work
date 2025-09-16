/*Q7 
Ask the user to input a list of integers. 
- Print the largest number, the smallest number, and their difference. 
- Calculate the average of the list. 
- Print all numbers that are above the average. 
- Finally, print how many numbers are even and how many are odd in the list. */
import 'dart:io';

void main() {
  List<int> numbers = [];
  int sum = 0;

  for (int i = 0; i < 10; i++) {
    print('Enter a number above 0 ?');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
    sum += num;
  }
  numbers.sort();
  int smallNumber = numbers.first;
  int largestNumber = numbers.last;
  print('smallest number = $smallNumber and largest number = $largestNumber ');
  int difference = largestNumber - smallNumber;
  print('difference = $difference');
  double average = sum / numbers.length;
  print('average = $average');
  int countOfEven = 0;
  int countOfOod = 0;

  for (var num in numbers) {
    print('numbers that are above the average');
    if (num > average) {
      print(num);
    }
    if (num % 2 == 0) {
      countOfEven++;
    } else {
      countOfOod++;
    }
  }
  print('count of ood numbers $countOfOod');
  print('count of even numbers $countOfEven');
}
