/*Q6 
Create a program that calculates the factorial of 6 and prints the result. */
void main() {
  int factorial = 1;
  int i = 1;
  for (int numbers = 4; numbers >= i; numbers--) {
    factorial *= numbers;
  }
  print(factorial);
}
