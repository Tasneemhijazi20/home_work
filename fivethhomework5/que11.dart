/*Q11
Create a function that takes a required product name and an optional discount 
percentage. If the discount is provided, print 'Product has discount %'.
 If not, print 'Product has no discount'. */
void main() {
  printDiscount('Shirt');
}

void printDiscount(String productName, [double? discount]) {
  if (discount == null) {
    print('$productName has no discount');
  } else {
    print('$productName has discount = $discount %');
  }
}
