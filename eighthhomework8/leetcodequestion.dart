void main() {
  List<int> prices = [7, 6, 4, 3, 1]; //[7, 1, 5, 3, 6, 4];
  print(maxProfit(prices));
}

int maxProfit(List<int> prices) {
  int minIndex = 0;
  int minItem = prices[0];
  for (int i = 1; i < prices.length; i++) {
    if (prices[i] < minItem) {
      minItem = prices[i];
      minIndex = i;
    }
  }

  int maxItem = minItem;
  for (int i = minIndex + 1; i < prices.length; i++) {
    if (minItem < prices[i] && maxItem < prices[i]) {
      maxItem = prices[i];
    }
  }
  int maxProfit = maxItem - minItem;
  return maxProfit;
}
