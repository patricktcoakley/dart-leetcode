List<List<int>> permute(List<int> nums) {
  var list = <List<int>>[];

  if (nums.isEmpty) {
    return list;
  }

  void permutation(List<int> curr) {
    if (curr.length == nums.length) {
      list.add([...curr]);
      return;
    }

    for (var num in nums) {
      if (!curr.contains(num)) {
        curr.add(num);
        permutation(curr);
        curr.removeLast();
      }
    }
  }

  permutation([]);
  return list;
}
