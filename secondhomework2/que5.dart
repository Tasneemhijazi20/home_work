/*Exercise 5:
5. a) Declare two integers a and b.
b) Print outcomes of comparison operators: a == b, a != b, a > b, a < b, a >= b, a <= b.
c) Declare int sum = a + b; check if sum equals 20 and print the boolean result. */
void main() {
  int a = 12;
  int b = 23;
  bool isAEqualB = a == b;
  bool isANotEqualB = a != b;
  bool isAHigherThanB = a > b;
  bool isASmallerThanB = a < b;
  bool isAHigherOrEqualB = a >= b;
  bool isASmallerOrEqualB = a <= b;
  print(isAEqualB);
  print(isANotEqualB);
  print(isASmallerThanB);
  print(isAHigherThanB);
  print(isAHigherOrEqualB);
  print(isASmallerOrEqualB);
  int sum = a + b;
  bool isEquals = sum == 20;
  print(isEquals);
}
