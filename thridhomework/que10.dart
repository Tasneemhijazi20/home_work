/* Question 18
Write a Dart program that reads environment variables from a map.
 If a value is null, replace it with a default. Print values in uppercase, 
 and display 'Prod ready' or 'Non-prod' depending on conditions.*/
void main() {
  Map<String, dynamic?> environment = {
    'PATH': null,
    'API_KEY': null,
    'VERSION': 10
  };
  if (environment['PATH'] == null) {
    environment['PATH'] = '/https://...';
  }
  if (environment['API_KEY'] == null) {
    environment['API_KEY'] = 'default_key';
  }
  if (environment['VERSION'] == null) {
    environment['VERSION'] = 8;
  }
  print(environment.values.toString().toUpperCase());
  bool isProd = false;
  if (environment['API_KEY'] != null &&
      environment['VERSION'] != null &&
      environment['PATH'] != null) {
    isProd = true;
  }
  if (isProd) {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}
