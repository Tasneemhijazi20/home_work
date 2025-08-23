/* Question 20 
Write a Dart program that checks access rules for a ticket gate. If the user is under 18,
 check if they have a parent.
  Use a switch statement on an area variable (general or restricted) to decide what 
message to print.*/
void main() {
  bool haveAParent = true;
  int userAge = 17;
  String areaVariable = 'general';
  if (userAge < 18) {
    if (haveAParent) {
      print('can access for a ticket gate');
    } else {
      print("can't access for a ticket gate ");
    }
  }
  switch (areaVariable) {
    case 'general':
      print('general area access ');
      break;
    case 'restricted':
      print('restricted area access');
      break;
    default:
      print('unknown area');
  }
}
