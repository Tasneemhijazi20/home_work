/*Q5 Create a class Course with attributes title and duration (default = 3 months).
 Create two courses: one with custom duration and one with the default. Print both. */
void main() {
  Course c1 = Course(title: 'English');
  Course c2 = Course(title: 'Arabic', duration: 7);
  print(' ${c1.title} and duration ${c1.duration} months');
  print(' ${c2.title} and duration ${c2.duration} months');
}

class Course {
  String? title;
  int duration = 3;
  Course({required String title, int duration = 3}) {
    this.title = title;
    this.duration = duration;
  }
}
