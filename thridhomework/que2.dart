/*Question 10 
Create a Dart program that builds a map of country codes. Print the value for 'EG',
 add a new entry 'QA': 'Qatar', print the total length,
  and check if 'JO' exists—if not, print 'Jordan missing'. */
void main() {
  Map<String, String> countryCodes = {
    'EG': 'Egypt',
    'SA': 'Saudi Arabia',
    'JO': 'Jordan',
    'KW': 'Kuwait'
  };
  print(countryCodes['EG']);
  countryCodes['QA'] = 'Qatar';
  print(countryCodes.length);
  if (countryCodes.containsKey('JO')) {
    print('there are Jordan');
  } else {
    print('Jordan missing');
  }
}
