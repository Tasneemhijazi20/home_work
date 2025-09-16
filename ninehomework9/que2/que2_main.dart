import '';
import 'car_class.dart';

void main() {
  Car car1 = Car();
  Car car2 = Car();
  car1.brand = '';
  car1.year = 1885;
  car2.brand = 'toyta';
  car2.year = 2023;
  print(car2.brand);
  print(car2.year);
}
