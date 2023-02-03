import 'package:leetcode/tree/tree_node.dart';

List<String> binaryTreePaths(TreeNode? root) {
  var output = <String>[];
  void traverse(TreeNode? node, String curr) {
    if (node == null) {
      return;
    }

    curr += '${node.val}->';
    if (node.left == null && node.right == null) {
      output.add(curr.substring(0, curr.length - 2));
      return;
    }

    traverse(node.left, curr);
    traverse(node.right, curr);
  }

  traverse(root, '');
  return output;
}
