/*Q3. Word Reversal & Vowel Count - Take a word from the user.
 - Print the word reversed, and also count how many vowels it has.  */
import 'dart:io';

void main() {
  print('Enter word');
  String word = stdin.readLineSync()!;
  String reversedWord = word.split('').reversed.join();
  print(reversedWord);
  int count = 0;
  for (int i = 0; i < word.length; i++) {
    if (word[i] == 'a' ||
        word[i] == 'o' ||
        word[i] == 'u' ||
        word[i] == 'e' ||
        word[i] == 'i') {
      count++;
    }
  }
  print('count of vowels it has =$count');
}
