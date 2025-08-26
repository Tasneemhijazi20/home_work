/* Q13 
Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. 
Count how many times each name appears. 
Print only the names that appear more than once.*/
void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Map<String, int> counts = {};
  for (var name in names) {
    if (counts.containsKey(name)) {
      counts[name] = counts[name]! + 1;
    } else {
      counts[name] = 1;
    }
  }
  counts.forEach((String name, int count) {
    if (count > 1) {
      print('$name is view $count');
    }
  });
}
