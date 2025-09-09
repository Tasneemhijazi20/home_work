/* Q6. Sentence Analyzer - Ask the user to input a sentence. 
- Print how many words it contains. - Then print the shortest word and
 the longest word from the sentence. */
import 'dart:io';

void main() {
  print('Enter sentence');
  String sentence = stdin.readLineSync()!;
  List<String> wordName = sentence.split(' ');
  print(wordName.length);
  Map<String, int> wordLength = {};
  wordName.forEach((String item) {
    wordLength[item] = item.length;
  });
  print(wordLength);
  int min = 99999;
  int max = 0;
  String longestword = '';
  String shortestWord = '';
  wordLength.forEach((String name, int length) {
    if (length > max) {
      max = length;
      longestword = name;
    }
    if (length < min) {
      min = length;
      shortestWord = name;
    }
  });
  print(
    ' the longest word : $longestword and  the shortest word : $shortestWord',
  );
}
