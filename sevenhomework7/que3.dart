/*Q3. Modify Attributes - Create a class Person with attributes name and age.
 - Create an object and set its initial values using a constructor.
 - Then change the age of the object and print the updated details.  */
void main() {
  Person s = Person(name: 'tasneem', age: 21);
  s.age = 22;
  print('name : ${s.name} and age : ${s.age}');
}

class Person {
  String? name;
  int? age;
  Person({required String name, required int age}) {
    this.name = name;
    this.age = age;
  }
}
