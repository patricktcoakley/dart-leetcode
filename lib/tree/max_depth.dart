import 'dart:math';

import 'package:leetcode/tree/tree_node.dart';

int maxDepth(TreeNode? root) {
  if (root == null) {
    return 0;
  }
  return max(maxDepth(root.left), maxDepth(root.right)) + 1;
}
