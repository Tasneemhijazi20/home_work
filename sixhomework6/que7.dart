/* Q7. Sentence Word Counter - Ask the user for a short sentence. 
- Print how many words it contains and how many characters (excluding spaces).*/
import 'dart:io';

void main() {
  print('please enter a short sentence .');
  String sentence = stdin.readLineSync()!;
  int wordLength = sentence.split(' ').length;
  int charactersLength = sentence.replaceAll(' ', '').length;
  print('the count of word = $wordLength');
  print('the count of characters = $charactersLength ');
}
