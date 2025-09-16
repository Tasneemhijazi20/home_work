/* Q4 
Create a class Product with private fields _name and _price. 
- Reject empty names and negative prices in setters. 
- Add a computed getter discountedPrice that returns the price with a 10% discount applied. 
- In main(), demonstrate setting values and printing the original and discounted price. */
class Product {
  String? _name;
  double? _price;
  set name(String name) {
    if (name.isNotEmpty) {
      this._name = name;
    }
  }

  set price(double price) {
    if (price >= 0) {
      this._price = price;
    }
  }

  get price => this._price!;
  get name => this._name!;
  double get discountedPrice => this._price! * 0.9;
}
