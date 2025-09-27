/*Q1 
Design an OOP model for planning trip fuel across multiple vehicle types. 
Requirements: 
- Provide a general vehicle type with encapsulated core data (private fields) 
and validated constructors 
(invalid → print an error; keep previous values). 
- Create at least two specialized vehicle types that inherit from the general type
 and introduce one private field each affecting fuel usage, with validation. 
- Define a fuel computation method in the general type; specialized types must 
override it with their own rule. 
- In a mixed collection of vehicles, given a list of trip distances, compute total 
fuel per vehicle and print 
which vehicles cannot complete the route under their own constraints 
(you define the constraint per type). */

class Vehicle {
  double _currentFuel = 1;
  double _tankCapacity = 1;
  double _fuelConsumption = 1;
  int _year = 1886;
  String _brand = 'toyta';
  Vehicle({
    required double currentFuel,
    required double tankCapacity,
    required double fuelConsumption,
    required int year,
    required String brand,
  }) {
    if (currentFuel > 0) {
      this._currentFuel = currentFuel;
    }
    if (tankCapacity > 0) {
      this._tankCapacity = tankCapacity;
    }
    if (fuelConsumption > 0) {
      this._fuelConsumption = fuelConsumption;
    }
    if (year >= 1886) {
      this._year = year;
    }
    if (brand.isNotEmpty) {
      this._brand = brand;
    }
  }
  set tankCapacity(double tankCapacity) {
    if (tankCapacity > 0) {
      this._tankCapacity = tankCapacity;
    } else {
      print('invalid value');
    }
  }

  set fuelConsumption(double fuelConsumption) {
    if (fuelConsumption > 0) {
      this._fuelConsumption = fuelConsumption;
    } else {
      print('invalid value');
    }
  }

  set Brand(String brand) {
    if (brand.isNotEmpty) {
      this._brand = brand;
    } else {
      print('invalid value');
    }
  }

  set currentFuel(double currentFuel) {
    if (currentFuel > 0) {
      this._currentFuel = currentFuel;
    } else {
      print('invalid value');
    }
  }

  set year(int year) {
    if (year >= 1886) {
      this._year = year;
    } else {
      print('invalid value');
    }
  }

  int get year => this._year;
  double get currentFuel => this._currentFuel;
  double get fuelConsumption => this._fuelConsumption;
  double get tankCapacity => this._tankCapacity;
  String get brand => this._brand;
  double fuelCalculation(double distance) {
    double requiredFuel = distance * this._fuelConsumption;
    return requiredFuel;
  }

  bool canCompleteTrip(double distance) {
    return fuelCalculation(distance) <= this._tankCapacity;
  }
}

class Car extends Vehicle {
  int _passengers = 1;

  Car({
    required double currentFuel,
    required double tankCapacity,
    required double fuelConsumption,
    required int year,
    required String brand,
    required int passengers,
  }) : super(
         brand: brand,
         year: year,
         currentFuel: currentFuel,
         fuelConsumption: fuelConsumption,
         tankCapacity: tankCapacity,
       ) {
    if (passengers > 0) {
      this._passengers = passengers;
    }
  }
  set passengers(int passengers) {
    if (passengers > 0) {
      this._passengers = passengers;
    } else {
      print('invaild value');
    }
  }

  int get passengers => this._passengers;

  @override
  double fuelCalculation(double distance) {
    double requiredFuel =
        distance * this._fuelConsumption * (1 + 0.05 * this._passengers);
    return requiredFuel;
  }
}

class Bus extends Vehicle {
  double? _airConditioning;
  Bus({
    required double currentFuel,
    required double tankCapacity,
    required double fuelConsumption,
    required int year,
    required String brand,
    required double airConditioning,
  }) : super(
         brand: brand,
         year: year,
         currentFuel: currentFuel,
         tankCapacity: tankCapacity,
         fuelConsumption: fuelConsumption,
       ) {
    if (airConditioning > 0) {
      this._airConditioning = airConditioning;
    }
  }
  set airConditioning(double airConditioning) {
    if (airConditioning > 0) {
      this._airConditioning = airConditioning;
    } else {
      print('invaild value');
    }
  }

  double get airConditioning => this._airConditioning!;

  @override
  double fuelCalculation(double distance) {
    double requiredFuel;
    if (this._airConditioning != null) {
      requiredFuel = distance * this._fuelConsumption * 1.20;
      return requiredFuel;
    } else {
      requiredFuel = distance * this._fuelConsumption;
      return requiredFuel;
    }
  }

  @override
  bool canCompleteTrip(double distance) {
    return fuelCalculation(distance) <= this._tankCapacity * 0.8;
  }
}
