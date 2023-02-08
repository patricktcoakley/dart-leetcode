int singleNumber(List<int> nums) {
  var out = 0;
  for (var num in nums) {
    out ^= num;
  }

  return out;
}
