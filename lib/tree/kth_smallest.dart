import 'package:leetcode/tree/tree_node.dart';

int kthSmallest(TreeNode? root, int k) {
  var s = <TreeNode?>[];
  TreeNode? curr = root;

  while (true) {
    while (curr != null) {
      s.add(curr);
      curr = curr.left;
    }

    if (s.isEmpty) {
      break;
    }

    curr = s.removeLast();
    k -= 1;
    if (k == 0) {
      return curr!.val;
    }

    curr = curr!.right;
  }

  return -1;
}
