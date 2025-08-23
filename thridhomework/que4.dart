/* Question 12 
Create a Dart program that safely reads a phone number from a map.
 If the phone number is null, print a default message. 
 Then update the phone number and print its length.*/
void main() {
  Map<String, dynamic?> information = {
    'name': 'tasneem',
    'phoneNumber': null,
    'country': 'syria',
    'age': 20
  };
  if (information['phoneNumber'] == null) {
    print('No phoneNumber ');
    information['phoneNumber'] = '09237641';
  }
  print('phone number length = ${information['phoneNumber'].length} ');
}
