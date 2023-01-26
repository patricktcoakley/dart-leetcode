import 'dart:collection';

bool containsDuplicate(List<int> nums) {
  return HashSet.from(nums).length < nums.length;
}
