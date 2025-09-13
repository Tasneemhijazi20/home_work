/*Q4 Create a class Employee with attributes name and salary. Add a method 
giveRaise(int amount) that increases the salary. In main(), create an employee,
 give them a raise, and print the new salary.  */
void main() {
  Employee employee = Employee(name: 'sara', salary: 15000);
  employee.giveRaise(500);
  print('${employee.name} has salary = ${employee.salary}');
}

class Employee {
  String? name;
  int? salary;
  Employee({required String name, required int salary}) {
    this.name = name;
    this.salary = salary;
  }
  void giveRaise(int amount) {
    this.salary = this.salary! + amount;
  }
}
