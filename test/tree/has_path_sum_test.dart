import 'package:leetcode/leetcode.dart';
import 'package:leetcode/tree/has_path_sum.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var input = TreeNode.fromList(
        [5, 4, 8, 11, null, 13, 4, 7, 2, null, null, null, 1]);
    var expected = true;
    expect(hasPathSum(input, 22), expected);
  });

  test('example 2', () {
    var input = TreeNode.fromList([1, 2, 3]);
    var expected = false;
    expect(hasPathSum(input, 5), expected);
  });

  test('example 3', () {
    var expected = false;
    expect(hasPathSum(null, 0), expected);
  });
}
