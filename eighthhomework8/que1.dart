/*Q1 Create a class City with attributes name and population.
 In main(), create two city objects and print their details. */
void main() {
  City hama = City(name: 'Hama', population: 15000);
  City homs = City(name: 'Homs', population: 20000);
  print(' ${hama.name} has ${hama.population} population');
  print(' ${homs.name} has ${homs.population} population');
}

class City {
  String? name;
  int? population;
  City({String? name, int? population}) {
    this.name = name;
    this.population = population;
  }
}
