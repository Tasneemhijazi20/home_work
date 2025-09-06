/*
Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20.
 - Let the user guess up to 3 times. If they fail, reveal the correct number.  
 */
import 'dart:math';
import 'dart:io';

void main() {
  Random random = new Random();
  int number = random.nextInt(20) + 1;
  for (int i = 0; i < 3; i++) {
    print(' Enter a number between 1 and 20 ?');
    int num = int.parse(stdin.readLineSync()!);
    if (num == number) {
      print('yes you success');
      return;
    }
    if (i == 2) {
      if (num != number) {
        print(' you failed and the number is $number');
        return;
      }
    }
  }
}
