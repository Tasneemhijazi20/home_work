/*Q2. Class with Constructor - Create a class Car with attributes brand and year.
 - Add a constructor to set the values when creating the object.
 - In main(), create two car objects with different data and 
print their details.  */
void main() {
  Car camry = Car('Toyota', 2023);
  Car aventador = Car('Lamborghini', 2022);
  print('name: camary and brand : ${camry.brand} and year : ${camry.year}');
  print(
    'name: aventador and brand : ${aventador.brand} and year : ${aventador.year}',
  );
}

class Car {
  String? brand;
  int? year;
  Car(String brand, int year) {
    this.year = year;
    this.brand = brand;
  }
}
