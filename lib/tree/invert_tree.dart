import 'package:leetcode/tree/tree_node.dart';

TreeNode? invertTree(TreeNode? root) {
  if (root == null) {
    return null;
  }

  var left = invertTree(root.right);
  var right = invertTree(root.left);
  root
    ..left = left
    ..right = right;

  return root;
}
