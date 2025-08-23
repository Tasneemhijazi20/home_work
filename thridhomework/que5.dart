/* Question 13 
Write a Dart program that calculates a grade (A, B, C, or D) based on a mark.
 Then use a switch statement to print a message for each grade.*/
void main() {
  int mark = 83;
  String? grade;
  if (mark >= 60 && mark < 70) {
    grade = 'D';
  } else if (mark >= 70 && mark < 80) {
    grade = 'C';
  } else if (mark >= 80 && mark < 90) {
    grade = 'B';
  } else if (mark >= 90 && mark < 101) {
    grade = 'A';
  } else {
    grade = 'F';
  }
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Very Good');
      break;
    case 'C':
      print('Good');
      break;
    case 'D':
      print('Passing');
      break;
    case 'F':
      print('Faild');
      break;
    default:
      print('unkown grade');
  }
}
