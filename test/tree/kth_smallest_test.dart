import 'package:leetcode/leetcode.dart';
import 'package:leetcode/tree/kth_smallest.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var input = TreeNode.fromList([3, 1, 4, null, 2]);
    var expected = 1;
    expect(kthSmallest(input, 1), equals(expected));
  });

  test('example 2', () {
    var input = TreeNode.fromList([5, 3, 6, 2, 4, null, null, 1]);
    var expected = 3;
    expect(kthSmallest(input, 3), equals(expected));
  });
}
