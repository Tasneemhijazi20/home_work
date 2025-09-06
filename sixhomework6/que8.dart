/*Q8. Digits Operations - Ask the user for a number (e.g., 528). 
- Print the sum of its digits and also ,print the largest digit. */
import 'dart:io';

void main() {
  print('please enter a number with more than two digits');
  int number = int.parse(stdin.readLineSync()!);
  List<String> nums = number.toString().split('');
  print(nums);
  int sum = 0;
  int maxNum = 0;
  nums.forEach(
    (element) {
      if (maxNum < int.parse(element)) {
        maxNum = int.parse(element);
      }
      sum += int.parse(element);
    },
  );
  print(sum);
  print(maxNum);
}
