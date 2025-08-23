/*Question 16 
Write a Dart program that evaluates three integer variables with different logical and 
comparison expressions. Print the results, then decide whether to print 'Rule passed'
 or 'Rule failed' based on one of the expressions. */
void main() {
  int a = 5;
  int b = 15;
  int c = 20;
  bool isNotEqual = a != b;
  bool isBHeigherThanA = b > a;
  bool isCEqualSum = c == (a + b);
  print('did A not equal B ? $isNotEqual');
  print('did B biger than A ? $isBHeigherThanA');
  print(' C = ( A + B ) ? $isCEqualSum');
  if (isNotEqual && isBHeigherThanA && isCEqualSum) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
