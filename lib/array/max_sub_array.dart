import 'dart:math';

int maxSubArray(List<int> nums) {
  var curr = nums[0];

  if (nums.length == 1) {
    return curr;
  }

  var total = nums[0];
  for (var i = 1; i < nums.length; ++i) {
    final num = nums[i];
    curr = max(num, num + curr);
    total = max(total, curr);
  }

  return total;
}
