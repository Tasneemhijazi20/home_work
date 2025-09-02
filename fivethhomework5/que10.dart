/*Q10
Create a function that takes an integer n and returns the sum of all
 numbers from 1 to n. Print the returned value.  */
void main() {
  int num = 7;
  int sum = sumNumbers(num);
  print('sum = $sum');
}

int sumNumbers(int num) {
  int sum = 0;
  for (int i = 1; i <= num; i++) {
    sum += i;
  }
  return sum;
}
