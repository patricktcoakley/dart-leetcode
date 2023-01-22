import 'dart:collection';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);

  static TreeNode? fromList(List<int?> nums) {
    if (nums.isEmpty || nums.first == null) {
      return null;
    }

    var root = TreeNode(nums.first!);
    var queue = Queue<TreeNode?>.from([root]);
    var index = 1;
    var n = nums.length;
    while (queue.isNotEmpty && index < n) {
      var top = queue.removeFirst();
      if (top == null) {
        continue;
      }

      if (nums[index] != null) {
        top.left = TreeNode(nums[index]!);
      }
      queue.addLast(top.left);
      index += 1;

      if (index >= n) {
        break;
      }

      if (nums[index] != null) {
        top.right = TreeNode(nums[index]!);
      }

      queue.addLast(top.right);
      index += 1;
    }
    return root;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TreeNode &&
          runtimeType == other.runtimeType &&
          val == other.val &&
          left == other.left &&
          right == other.right;

  @override
  int get hashCode => val.hashCode ^ left.hashCode ^ right.hashCode;
}
