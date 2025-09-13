/*Q2 Create a class Temperature with an attribute celsius. Add a method toFahrenheit()
 that returns the temperature in Fahrenheit. In main(), create an object and
  print the converted value. */
void main() {
  Temperature t1 = Temperature(celsius: 2);
  print(' the Temperature in Fahrenheit = ${t1.toFahrenheit()}');
}

class Temperature {
  double? celsius;
  Temperature({required double celsius}) {
    this.celsius = celsius;
  }
  double toFahrenheit() {
    double fahrenheit = 32 + (this.celsius! * 9 / 5);
    return fahrenheit;
  }
}
