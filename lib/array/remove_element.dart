int removeElement(List<int> nums, int val) {
  var left = 0;
  var right = nums.length - 1;
  while (left < right) {
    if (nums[left] == val) {
      nums[left] = nums[right - 1];
      right -= 1;
    } else {
      left += 1;
    }
  }

  return right;
}
