import 'dart:math';

int maxProfit(List<int> prices) {
  var lo = prices[0];
  var hi = 0;
  for (var price in prices) {
    lo = min(lo, price);
    hi = max(hi, price - lo);
  }

  return hi;
}
