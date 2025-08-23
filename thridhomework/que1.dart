/*Question 9 
Write a Dart program that removes duplicate items from a list using a Set.
 Compare the unique 
count with the original list length and print a message if duplicates were removed. */
void main() {
  List<int> numbers = [1, 4, 4, 2, 2, 9, 12, 4, 3];
  Set<int> nums = numbers.toSet();
  int numbersLength = numbers.length;
  int numsLength = nums.length;
  bool isDuplicatesRemoved = numsLength < numbersLength;
  if (isDuplicatesRemoved) {
    print('duplicates were removed');
  } else {
    print("duplicates weren't removed");
  }
}
