/*Q3
Create a program with a set of numbers [3, 6, 9, 3, 12, 15].
 Print whether the set contains the number 10. */
void main() {
  List<int> nums = [3, 6, 9, 3, 12, 15];
  Set<int> numbers = nums.toSet();
  bool isSetContains = numbers.contains(10);
  print(isSetContains);
}
