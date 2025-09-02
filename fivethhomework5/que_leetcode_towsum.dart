void main() {
  int target = 7;
  List<int> numbers = [2, 5, 3, 4, 6, 8];
  List<int> result = [];
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] + numbers[j] == target) {
        result.add(i);
        result.add(j);
      }
    }
  }
  print(result);
}
