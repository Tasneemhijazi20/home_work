/* Question 15 
Write a Dart program that simulates a simple router using a switch statement 
on a string path ('/', '/products', '/profile', or other).
Handle each case with appropriate output, including maps and null safety where needed.*/
void main() {
  String? path = null;
  if (path == null) {
    path = '/products';
  }
  Map<String, dynamic> productsPage = {'name': 'shirt', 'price': 150};
  Map<String, String> profilePage = {
    'email': 'def12ault@gmail.com',
    'name': 'Tasneem',
    'phoneNumber': '092467578'
  };
  switch (path) {
    case '/':
      print('HomePage');
      break;
    case '/products':
      print(productsPage);
      break;
    case '/profile':
      print(profilePage);
      break;
    default:
      print('no path');
  }
}
