import 'package:leetcode/tree/tree_node.dart';

bool isValidBST(TreeNode? root) {
  if (root == null) {
    return true;
  }

  var s = <TreeNode>[];
  TreeNode? curr = root;
  TreeNode? prev;
  while (true) {
    while (curr != null) {
      s.add(curr);
      curr = curr.left;
    }

    if (s.isEmpty) {
      break;
    }

    curr = s.removeLast();
    if (prev != null && prev.val >= curr.val) {
      return false;
    }

    prev = curr;
    curr = curr.right;
  }

  return true;
}
