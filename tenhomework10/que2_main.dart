import 'que2_class.dart';

void main() {
  Circle circle1 = Circle(radius: 10);
  Square square1 = Square(side: 15);
  Rectangle rectangle1 = Rectangle(width: 20, height: 14);
  List<Shape> shapes = [rectangle1, square1, circle1];
  double totalArea = 0;
  for (var shape in shapes) {
    totalArea += shape.area();
  }
  double totalCost = calculateCost(totalArea);
  print('total paintable area =${totalArea.toStringAsFixed(2)}');
  print('total paintable cost =${totalCost.toStringAsFixed(2)}');
}

double calculateCost(double totalArea) {
  double cost = 0.0;
  if (totalArea > 150) {
    cost += (totalArea - 150) * 1.00;
    totalArea = 150;
  }
  if (totalArea > 50) {
    cost += (totalArea - 50) * 1.25;
    totalArea = 50;
  }
  cost += totalArea * 1.50;
  return cost;
}
