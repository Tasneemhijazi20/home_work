/*Given two strings s and t, return true if t is an anagram of s, and false otherwise.
Example 1:
Input: s = "anagram", t = "nagaram"
Output: true
Example 2:
Input: s = "rat", t = "car"
Output: false */
void main() {
  String s = "rac";
  String t = "car";
  print(isAnagram(s, t));
}

bool isAnagram(String s, String t) {
  List<String> slist = s.split('');
  List<String> tlist = t.split('');
  slist.sort();
  tlist.sort();
  String sjoin = slist.join();
  String tjoin = tlist.join();
  return sjoin == tjoin;
}
