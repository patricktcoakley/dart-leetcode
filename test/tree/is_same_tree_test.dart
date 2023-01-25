import 'package:leetcode/leetcode.dart';
import 'package:leetcode/tree/is_same_tree.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var p = TreeNode.fromList([1, 2, 3]);
    var q = TreeNode.fromList([1, 2, 3]);
    expect(isSameTree(p, q), equals(true));
  });

  test('example 2', () {
    var p = TreeNode.fromList([1, 2]);
    var q = TreeNode.fromList([1, null, 2]);
    expect(isSameTree(p, q), equals(false));
  });

  test('example 3', () {
    var p = TreeNode.fromList([1, 2, 1]);
    var q = TreeNode.fromList([1, 1, 2]);
    expect(isSameTree(p, q), equals(false));
  });
}
