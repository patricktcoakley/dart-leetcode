import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var input = TreeNode.fromList([4, 2, 7, 1, 3, 6, 9]);
    var expected = TreeNode.fromList([4, 7, 2, 9, 6, 3, 1]);
    expect(invertTree(input), equals(expected));
  });

  test('example 2', () {
    var input = TreeNode.fromList([2, 1, 3]);
    var expected = TreeNode.fromList([2, 3, 1]);
    expect(invertTree(input), equals(expected));
  });

  test('example 3', () {
    var input = TreeNode.fromList([]);
    var expected = TreeNode.fromList([]);
    expect(invertTree(input), equals(expected));
  });
}
