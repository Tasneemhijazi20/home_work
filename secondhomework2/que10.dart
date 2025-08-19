/*Exercise 10:
10. a) Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing
after each.
b) Create var greeting = 'Hi'; change it to another String and print.
c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3).*/
void main() {
  dynamic value1 = 20;
  print(value1);
  value1 = 'omar';
  print(value1);
  var value2 = 23;
  print(value2);
  //value2 = 'hi'; error can't be string
  print('**************************');
  var greeting = 'Hi';
  print(greeting);
  greeting = 'Hello';
  print(greeting);
  print('**************************');
  num pi = 3.14159;
  print(pi.toInt());
  print(pi.toStringAsFixed(3));
}
