/* Q5 
Create a program with the text 'EGP 12.50'. Print only the number 12.50 as a decimal.*/
void main() {
  String strprice = 'EGP 12.50';
  double num = double.parse(strprice.split(' ')[1]);
  print(num);
}
