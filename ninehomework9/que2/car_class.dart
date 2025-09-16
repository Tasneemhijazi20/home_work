/*Q2 
Create a class Car with private fields _brand and _year. 
- Add setters that reject empty brand names and years less than 1886 
(first car invention). 
- Add getters for both. 
- In main(), demonstrate creating two car objects (one valid, one invalid input). */
class Car {
  String? _brand;
  int? _year;
  set year(int year) {
    if (year > 1886) {
      this._year = year;
    } else {
      print('invalid input');
    }
  }

  set brand(String brand) {
    if (brand.isNotEmpty) {
      this._brand = brand;
    } else {
      print('invalid input');
    }
  }

  String get brand => this._brand!;
  int get year => this._year!;
}
