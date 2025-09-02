/* Q4
Create a program with a map of student names to their marks. 
Print the name of the student with the highest mark.*/
void main() {
  Map<String, int> marks = {'Tasneem': 90, 'Ali': 89, 'Omar': 75, 'Sara': 80};
  int maxMark = 0;
  String? studentName;
  marks.forEach((String name, int mark) {
    if (maxMark < mark) {
      maxMark = mark;
      studentName = name;
    }
  });
  print('name: $studentName , mark: $maxMark');
}
