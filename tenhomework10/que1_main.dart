import 'que1_class.dart';

void main() {
  List<Vehicle> vehicles = [
    Car(
      currentFuel: 70,
      tankCapacity: 100,
      fuelConsumption: 0.1,
      year: 2023,
      brand: 'toyta',
      passengers: 4,
    ),
    Bus(
      currentFuel: 80,
      tankCapacity: 120,
      fuelConsumption: 0.2,
      year: 2020,
      brand: 'toyta',
      airConditioning: 3.4,
    ),
  ];
  List<double> distances = [100, 202.3];
  print('total fuel for car is ${vehicles[0].fuelCalculation(distances[0])}');
  print('total fuel for bus is ${vehicles[1].fuelCalculation(distances[1])}');
  print(
    'can car complete the trip ? ${vehicles[0].canCompleteTrip(distances[0])}',
  );
  print(
    'can bus complete the trip ? ${vehicles[1].canCompleteTrip(distances[1])}',
  );
}
