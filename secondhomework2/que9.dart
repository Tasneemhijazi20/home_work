/*Exercise 9:
9. a) Create List<Map> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double.*/
void main() {
  List<Map> students = [
    {'tasneem': 87},
    {
      'sara': 78,
    }
  ];
  print(students);
  print(students[1]['sara']);
  int sum = students[0]['tasneem'] + students[1]['sara'];
  double average = sum / 2;
  print(average);
}
