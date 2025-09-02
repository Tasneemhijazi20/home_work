/*Q12 
Create a function that takes named parameters firstName, lastName, 
and an optional named parameter age.
 Print the full name and, if age is provided, also print 'Age: X'. */
void main() {
  printData(firstName: 'Tasneem', lastName: 'Hijazi', age: 21);
  printData(firstName: 'Omar', lastName: 'Hijazi');
}

void printData(
    {required String firstName, required String lastName, int? age}) {
  if (age != null) {
    print('FullName : $firstName $lastName and Age : $age');
  } else {
    print('FullName : $firstName $lastName');
  }
}
