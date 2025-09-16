import 'grade_class.dart';

void main() {
  Grade g1 = Grade();
  g1.score = -1;
  g1.score = 45;
  print(g1.score);
  print(g1.isPass);
  g1.score = 88;
  print(g1.score);
  print(g1.isPass);
}
