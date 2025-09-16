import 'product_class.dart';

void main() {
  Product p1 = Product();
  p1.name = 'shirt';
  p1.price = 200;
  print(p1.price);
  print(p1.discountedPrice);
}
