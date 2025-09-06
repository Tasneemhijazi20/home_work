/* */
void main() {
  String s = "A man, a plan, a canal: Panama";
  String ss = "race a car";
  String sss = " ";
  print(isPalindrome(s));
}

bool isPalindrome(String s) {
  s = s.toLowerCase();
  var str = s.split('');
  List<String> finalList = [];
  str.forEach((String item) {
    if (isLetterOrDigit(item)) {
      finalList.add(item);
    }
  });
  String finalString = finalList.join();
  String reverseString = finalList.reversed.join();
  if (finalString == reverseString || finalList.length == 0) {
    return true;
  } else {
    return false;
  }
}

bool isLetterOrDigit(String c) {
  const letters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const digits = '0123456789';
  return letters.contains(c) || digits.contains(c);
}
