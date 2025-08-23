/*Question 11 
Write a Dart program that applies discounts to a price.
 Use nested if/else to apply different discounts based on whether the user is a student
, has a coupon, or if the price is above a threshold. 
Print the final price.  */
void main() {
  num price = 235.5;
  num threshold = 240.5;
  bool isStudent = true;
  bool isHasACoupon = false;
  bool isPriceAboveAThreshold = price > threshold;
  int studentDiscount = 80;
  int couponDiscount = 75;
  int thresholdDiscount = 100;
  if (isStudent) {
    num finalPrice = price - studentDiscount;
    print('the price for student is $finalPrice');
  } else if (isHasACoupon) {
    num finalPrice = price - couponDiscount;
    print('the price for coupon is $finalPrice');
  } else if (isPriceAboveAThreshold) {
    num finalPrice = price - thresholdDiscount;
    print('the price for the price is above a threshold is $finalPrice');
  } else {
    print('No other option');
  }
}
