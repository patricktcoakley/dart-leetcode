import 'package:leetcode/tree/tree_node.dart';

bool isSameTree(TreeNode? p, TreeNode? q) {
  if (p == null && q == null) {
    return true;
  }

  if (p?.val != q?.val) {
    return false;
  }

  return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right);
}
