void main() {
  List<int> prices = [2, 4, 1, 2]; //[7, 1, 5, 3, 6, 4];
  print(maxProfit(prices));
}

int maxProfit(List<int> prices) {
  int maxProfit = 0;
  int smallNumber = prices[0];
  int largeNumber = prices[0];
  for (var num in prices) {
    if (num < smallNumber) {
      smallNumber = num;
      largeNumber = num;
    }
    if (largeNumber < num) {
      largeNumber = num;
    }
    int currentProfit = largeNumber - smallNumber;
    if (currentProfit > maxProfit) {
      maxProfit = currentProfit;
    }
  }
  return maxProfit;
}
