import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var input = TreeNode.fromList([1, 2, 3, null, 5]);
    expect(binaryTreePaths(input), equals(['1->2->5', '1->3']));
  });

  test('example 2', () {
    var input = TreeNode.fromList([1]);
    expect(binaryTreePaths(input), equals(['1']));
  });
}
