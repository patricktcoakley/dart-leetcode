import 'package:leetcode/tree/tree_node.dart';

bool isSymmetric(TreeNode? root) {
  bool areChildrenSymmetric(TreeNode? p, TreeNode? q) {
    if (p == null && q == null) {
      return true;
    }

    if (p?.val != q?.val) {
      return false;
    }

    return areChildrenSymmetric(p?.left, q?.right) &&
        areChildrenSymmetric(p?.right, q?.left);
  }

  return areChildrenSymmetric(root?.left, root?.right);
}
