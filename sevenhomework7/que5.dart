/*Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list.
 - Print the largest number and the second largest number (without sorting the list). */
import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 0; i < 6; i++) {
    print('Enter number?');
    int n = int.parse(stdin.readLineSync()!);
    numbers.add(n);
  }
  int largest = numbers[0];
  int secondLargest = -1;
  for (int i = 1; i < numbers.length; i++) {
    int item = numbers[i];
    if (item > largest) {
      secondLargest = largest;
      largest = item;
    } else if (item < largest && item > secondLargest) {
      secondLargest = item;
    }
  }
  print(
    'the largest number = $largest and the second largest number = $secondLargest',
  );
}
