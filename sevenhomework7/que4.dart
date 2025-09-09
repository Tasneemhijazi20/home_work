/*Q4. Class with Default Attribute Value - Create a class Product with attributes 
name and price. - Give price a default value of 0. 
- Create two objects: one with a custom price and one with the 
default price. Print their details.  */
void main() {
  Product s1 = Product();
  s1.name = 'Shirt';
  s1.price = 200;
  Product s2 = Product();
  s2.name = 'jenze';
  print('name : ${s1.name} and price : ${s1.price}');
  print('name : ${s2.name} and price : ${s2.price}');
}

class Product {
  String? name;
  int price = 0;
}
