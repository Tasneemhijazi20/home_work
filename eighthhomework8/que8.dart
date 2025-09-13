/*  Q8 Ask the user to input a sentence. Print all the words that appear only once 
in the sentence. Also print the total count of unique words.*/
import 'dart:io';

void main() {
  print('Enter a sentence ');
  String s = stdin.readLineSync()!;
  List<String> wordList = s.split(' ');
  Map<String, int> wordCount = {};
  for (var element in wordList) {
    if (wordCount.containsKey(element)) {
      wordCount[element] = wordCount[element]! + 1;
    } else {
      wordCount[element] = 1;
    }
  }
  int count = 0;
  wordCount.forEach((String key, int value) {
    if (value == 1) {
      print(key);
      count++;
    }
  });
  print(count);
}
