/*Question 14 
Write a Dart program that works with a nullable list of integers. 
If the list is null or empty, print 'No scores'. Otherwise, 
calculate and print the sum of the first and last elements and check if it is 
greater than or equal to 40. */
void main() {
  List<int>? scores = [12, 32, 34, 40];
  if (scores == null || scores.isEmpty) {
    print('No scores');
  } else {
    int sum = scores[0]! + scores[scores.length - 1]!;
    //int sum = scores.first! + scores.last!;
    bool isGreaterThanOrEqual = sum >= 40;
    if (isGreaterThanOrEqual) {
      print('Ok');
    } else {
      print('No');
    }
  }
}
