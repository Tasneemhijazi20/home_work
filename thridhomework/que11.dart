/*Question 19 
Write a Dart program that converts a list of names to a set of unique values.
 Create a map with counts of occurrences.
  Compare lengths and print a message if a specific name appears more than once.
*/
void main() {
  List<String> names = [
    'Tasneem',
    'Anas',
    'Sara',
    'Anas',
    'Omar',
    'Sara',
    'Sara',
    'Sara',
    'Omar',
    'Omar'
        'Ali'
  ];
  Set<String> uniqueNmaes = names.toSet();
  Map<String, int> numOfNames = {
    'Ali': 1,
    'Tasneem': 1,
    'Anas': 2,
    'Sara': 4,
    'Omar': 3
  };
  if (numOfNames['Ali']! > 1) {
    print('the name Ali appears more than once ');
  }
  if (numOfNames['Anas']! > 1) {
    print('the name Anas appears more than once ');
  }
  if (numOfNames['Sara']! > 1) {
    print('the name Sara appears more than once ');
  }
  if (numOfNames['Omar']! > 1) {
    print('the name Omar appears more than once ');
  }
  if (numOfNames['Tasneem']! > 1) {
    print('the name Tasneem appears more than once ');
  }
}
