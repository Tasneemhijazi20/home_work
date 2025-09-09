/* */
void main() {
  List<int> nums1 = [1, 2, 3, 1];
  List<int> nums2 = [1, 2, 3, 4];
  List<int> nums3 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
  print(containsDuplicate(nums3));
}

bool containsDuplicate(List<int> nums) {
  Map<int, int> numbers = {};
  nums.forEach((int item) {
    if (numbers.containsKey(item)) {
      numbers[item] = numbers[item]! + 1;
    } else {
      numbers[item] = 1;
    }
  });
  bool isDuplicate = false;
  int countOfDuplicateNumber = 0;
  numbers.forEach((int number, int count) {
    if (count > 1) {
      countOfDuplicateNumber++;
    }
  });
  if (countOfDuplicateNumber > 0) {
    isDuplicate = true;
  }
  return isDuplicate;
}
