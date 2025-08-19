/* Exercise 2:
2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
b) Print a sentence that includes all values using string interpolation.
c) Change weight to a different value and print only the updated one*/
void main() {
  String country = 'Syria';
  int year = 2004;
  double weight = 60;
  bool likesCoding = true;
  print(
      "I'am from $country and born in $year and my weight is $weight \n Did i like coding? $likesCoding");
  weight = 65;
  print('the new weight is $weight');
}
