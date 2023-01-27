import 'dart:collection';

import 'tree_node.dart';

List<List<int>> levelOrder(TreeNode? root) {
  if (root == null) {
    return [];
  }

  var out = <List<int>>[];
  var q = Queue<TreeNode>()..add(root);

  while (q.isNotEmpty) {
    var level = q.length;
    var curr = <int>[];

    for (var i = 0; i < level; i++) {
      var top = q.removeFirst();
      if (top.left != null) {
        q.add(top.left!);
      }
      if (top.right != null) {
        q.add(top.right!);
      }

      curr.add(top.val);
    }

    out.add(curr);
  }

  return out;
}
