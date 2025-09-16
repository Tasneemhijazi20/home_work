/*Q6 
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', 
determine if the input string is valid. 
An input string is valid if: 
1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order. 
3. Every close bracket has a corresponding open bracket of the same type. 
Examples: 
- '()' → Valid 
- '()[]{}' → Valid 
- '(]' → Invalid 
- '([)]' → Invalid 
- '{[]}' → Valid  */
void main() {
  String s = "({[";
  print(isValid(s));
}

bool isValid(String s) {
  List<String> characterOpen = [];
  for (int i = 0; i < s.length; i++) {
    String character = s[i];
    if (character == '(' || character == '{' || character == '[') {
      characterOpen.add(s[i]);
    } else {
      String lastCharacter = characterOpen.removeLast();
      if (lastCharacter == '(' && character != ')') {
        return false;
      }
      if (lastCharacter == '{' && character != '}') {
        return false;
      }
      if (lastCharacter == '[' && character != ']') {
        return false;
      }
    }
  }
  return characterOpen.isEmpty;
}
