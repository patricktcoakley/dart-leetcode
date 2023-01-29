List<int> twoSum(List<int> nums, int target) {
  var m = <int, int>{};

  for (var i = 0; i < nums.length; i++) {
    var diff = target - nums[i];

    if (m.containsKey(diff)) {
      return [m[diff]!, i];
    }

    m[nums[i]] = i;
  }

  return [];
}
