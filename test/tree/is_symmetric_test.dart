import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var root = TreeNode.fromList([1, 2, 2, 3, 4, 4, 3]);
    var expected = true;
    expect(isSymmetric(root), expected);
  });

  test('example 2', () {
    var root = TreeNode.fromList([1, 2, 2, null, 3, null, 3]);
    var expected = false;
    expect(isSymmetric(root), expected);
  });
}
