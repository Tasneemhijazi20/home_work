/* Question 17 
Write a Dart program that formats a price tag string with a currency.
 Apply string methods such as toString, padLeft,
  and length to format and compare the results.*/
void main() {
  double price = 252.5;
  String currency = '\$';
  String comparePrice = '252.5\$';
  String strPrice = price.toString() + currency;
  print(strPrice);
  print(strPrice.length);
  print(strPrice.padLeft(8, '-'));
  if (strPrice == comparePrice) {
    print('Ok match');
  } else {
    print('not match');
  }
}
