import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var root1 = TreeNode.fromList([1, 3, 2, 5]);
    var root2 = TreeNode.fromList([2, 1, 3, null, 4, null, 7]);
    var expected = TreeNode.fromList([3, 4, 5, 5, 4, null, 7]);

    expect(mergeTrees(root1, root2), expected);
  });
}
