import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var input = TreeNode.fromList([2, 1, 3]);
    var expected = true;
    expect(isValidBST(input), equals(expected));
  });

  test('example 2', () {
    var input = TreeNode.fromList([5, 1, 4, null, null, 3, 6]);
    var expected = false;
    expect(isValidBST(input), equals(expected));
  });
}
