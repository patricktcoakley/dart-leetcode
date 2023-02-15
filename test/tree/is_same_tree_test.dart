import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var p = TreeNode.fromList([1, 2, 3]);
    var q = TreeNode.fromList([1, 2, 3]);
    var expected = true;
    expect(isSameTree(p, q), expected);
  });

  test('example 2', () {
    var p = TreeNode.fromList([1, 2]);
    var q = TreeNode.fromList([1, null, 2]);
    var expected = false;
    expect(isSameTree(p, q), expected);
  });

  test('example 3', () {
    var p = TreeNode.fromList([1, 2, 1]);
    var q = TreeNode.fromList([1, 1, 2]);
    var expected = false;
    expect(isSameTree(p, q), expected);
  });
}
