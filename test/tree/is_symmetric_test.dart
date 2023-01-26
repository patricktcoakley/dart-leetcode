import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var root = TreeNode.fromList([1, 2, 2, 3, 4, 4, 3]);
    expect(isSymmetric(root), equals(true));
  });

  test('example 2', () {
    var root = TreeNode.fromList([1, 2, 2, null, 3, null, 3]);
    expect(isSymmetric(root), equals(false));
  });
}
